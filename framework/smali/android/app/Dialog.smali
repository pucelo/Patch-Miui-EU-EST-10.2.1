.class public Landroid/app/Dialog;
.super Ljava/lang/Object;
.source "Dialog.java"

# interfaces
.implements Landroid/content/DialogInterface;
.implements Landroid/view/Window$Callback;
.implements Landroid/view/KeyEvent$Callback;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/view/Window$OnWindowDismissedCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Dialog$ListenersHandler;
    }
.end annotation


# static fields
.field private static final CANCEL:I = 0x44

.field private static final DIALOG_HIERARCHY_TAG:Ljava/lang/String; = "android:dialogHierarchy"

.field private static final DIALOG_SHOWING_TAG:Ljava/lang/String; = "android:dialogShowing"

.field private static final DISMISS:I = 0x43

.field private static final SHOW:I = 0x45

.field private static final TAG:Ljava/lang/String; = "Dialog"


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mActionMode:Landroid/view/ActionMode;

.field private mActionModeTypeStarting:I

.field private mCancelAndDismissTaken:Ljava/lang/String;

.field private mCancelMessage:Landroid/os/Message;

.field protected mCancelable:Z

.field private mCanceled:Z

.field final mContext:Landroid/content/Context;

.field private mCreated:Z

.field mDecor:Landroid/view/View;

.field private final mDismissAction:Ljava/lang/Runnable;

.field private mDismissMessage:Landroid/os/Message;

.field private final mHandler:Landroid/os/Handler;

.field private final mListenersHandler:Landroid/os/Handler;

.field private mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field private mOwnerActivity:Landroid/app/Activity;

.field private mSearchEvent:Landroid/view/SearchEvent;

.field private mShowMessage:Landroid/os/Message;

.field private mShowing:Z

.field final mWindow:Landroid/view/Window;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;IZ)V
    .registers 10

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v4, p0, Landroid/app/Dialog;->mCancelable:Z

    iput-boolean v3, p0, Landroid/app/Dialog;->mCreated:Z

    iput-boolean v3, p0, Landroid/app/Dialog;->mShowing:Z

    iput-boolean v3, p0, Landroid/app/Dialog;->mCanceled:Z

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Landroid/app/Dialog;->mHandler:Landroid/os/Handler;

    iput v3, p0, Landroid/app/Dialog;->mActionModeTypeStarting:I

    new-instance v2, Landroid/app/-$Lambda$aS31cHIhRx41653CMnd4gZqshIQ;

    invoke-direct {v2, v3, p0}, Landroid/app/-$Lambda$aS31cHIhRx41653CMnd4gZqshIQ;-><init>(BLjava/lang/Object;)V

    iput-object v2, p0, Landroid/app/Dialog;->mDismissAction:Ljava/lang/Runnable;

    if-eqz p3, :cond_6e

    if-nez p2, :cond_33

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010308

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p2, v0, Landroid/util/TypedValue;->resourceId:I

    :cond_33
    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-direct {v2, p1, p2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    :goto_3a
    const-string/jumbo v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Landroid/app/Dialog;->mWindowManager:Landroid/view/WindowManager;

    new-instance v1, Lcom/android/internal/policy/PhoneWindow;

    iget-object v2, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, p0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    invoke-virtual {v1, p0}, Landroid/view/Window;->setOnWindowDismissedCallback(Landroid/view/Window$OnWindowDismissedCallback;)V

    new-instance v2, Landroid/app/-$Lambda$c44uHH2WE4sJvw5tZZB6gRzEaHI;

    invoke-direct {v2, p0}, Landroid/app/-$Lambda$c44uHH2WE4sJvw5tZZB6gRzEaHI;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setOnWindowSwipeDismissedCallback(Landroid/view/Window$OnWindowSwipeDismissedCallback;)V

    iget-object v2, p0, Landroid/app/Dialog;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {v1, v2, v5, v5}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;)V

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    new-instance v2, Landroid/app/Dialog$ListenersHandler;

    invoke-direct {v2, p0}, Landroid/app/Dialog$ListenersHandler;-><init>(Landroid/app/Dialog;)V

    iput-object v2, p0, Landroid/app/Dialog;->mListenersHandler:Landroid/os/Handler;

    return-void

    :cond_6e
    iput-object p1, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    goto :goto_3a
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-boolean p2, p0, Landroid/app/Dialog;->mCancelable:Z

    invoke-direct {p0}, Landroid/app/Dialog;->updateWindowForCancelable()V

    invoke-virtual {p0, p3}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/os/Message;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-boolean p2, p0, Landroid/app/Dialog;->mCancelable:Z

    invoke-direct {p0}, Landroid/app/Dialog;->updateWindowForCancelable()V

    iput-object p3, p0, Landroid/app/Dialog;->mCancelMessage:Landroid/os/Message;

    return-void
.end method

.method private getAssociatedActivity()Landroid/content/ComponentName;
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/app/Dialog;->mOwnerActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    :goto_7
    if-nez v0, :cond_20

    if-eqz v1, :cond_20

    instance-of v3, v1, Landroid/app/Activity;

    if-eqz v3, :cond_13

    move-object v0, v1

    check-cast v0, Landroid/app/Activity;

    goto :goto_7

    :cond_13
    instance-of v3, v1, Landroid/content/ContextWrapper;

    if-eqz v3, :cond_1e

    check-cast v1, Landroid/content/ContextWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_7

    :cond_1e
    const/4 v1, 0x0

    goto :goto_7

    :cond_20
    if-nez v0, :cond_23

    :goto_22
    return-object v2

    :cond_23
    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    goto :goto_22
.end method

.method private sendDismissMessage()V
    .registers 2

    iget-object v0, p0, Landroid/app/Dialog;->mDismissMessage:Landroid/os/Message;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/app/Dialog;->mDismissMessage:Landroid/os/Message;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_d
    return-void
.end method

.method private sendShowMessage()V
    .registers 2

    iget-object v0, p0, Landroid/app/Dialog;->mShowMessage:Landroid/os/Message;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/app/Dialog;->mShowMessage:Landroid/os/Message;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_d
    return-void
.end method

.method private updateWindowForCancelable()V
    .registers 3

    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    iget-boolean v1, p0, Landroid/app/Dialog;->mCancelable:Z

    invoke-virtual {v0, v1}, Landroid/view/Window;->setCloseOnSwipeEnabled(Z)V

    return-void
.end method


# virtual methods
.method synthetic -android_app_Dialog-mthref-0()V
    .registers 1

    invoke-virtual {p0}, Landroid/app/Dialog;->dismissDialog()V

    return-void
.end method

.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public cancel()V
    .registers 2

    iget-boolean v0, p0, Landroid/app/Dialog;->mCanceled:Z

    if-nez v0, :cond_14

    iget-object v0, p0, Landroid/app/Dialog;->mCancelMessage:Landroid/os/Message;

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Dialog;->mCanceled:Z

    iget-object v0, p0, Landroid/app/Dialog;->mCancelMessage:Landroid/os/Message;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_14
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public closeOptionsMenu()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->closePanel(I)V

    :cond_e
    return-void
.end method

.method public create()V
    .registers 2

    iget-boolean v0, p0, Landroid/app/Dialog;->mCreated:Z

    if-nez v0, :cond_8

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->dispatchOnCreate(Landroid/os/Bundle;)V

    :cond_8
    return-void
.end method

.method public dismiss()V
    .registers 3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Dialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_10

    invoke-virtual {p0}, Landroid/app/Dialog;->dismissDialog()V

    :goto_f
    return-void

    :cond_10
    iget-object v0, p0, Landroid/app/Dialog;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/app/Dialog;->mDismissAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_f
.end method

.method dismissDialog()V
    .registers 5

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Landroid/app/Dialog;->mShowing:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_d

    :cond_c
    return-void

    :cond_d
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string/jumbo v0, "Dialog"

    const-string/jumbo v1, "Tried to dismissDialog() but the Dialog\'s window was already destroyed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1f
    :try_start_1f
    iget-object v0, p0, Landroid/app/Dialog;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_3f

    iget-object v0, p0, Landroid/app/Dialog;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Landroid/app/Dialog;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_2f
    iput-object v2, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->closeAllPanels()V

    invoke-virtual {p0}, Landroid/app/Dialog;->onStop()V

    iput-boolean v3, p0, Landroid/app/Dialog;->mShowing:Z

    invoke-direct {p0}, Landroid/app/Dialog;->sendDismissMessage()V

    return-void

    :catchall_3f
    move-exception v0

    iget-object v1, p0, Landroid/app/Dialog;->mActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_49

    iget-object v1, p0, Landroid/app/Dialog;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    :cond_49
    iput-object v2, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    iget-object v1, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->closeAllPanels()V

    invoke-virtual {p0}, Landroid/app/Dialog;->onStop()V

    iput-boolean v3, p0, Landroid/app/Dialog;->mShowing:Z

    invoke-direct {p0}, Landroid/app/Dialog;->sendDismissMessage()V

    throw v0
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 6

    const/4 v3, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/app/Dialog;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_13

    iget-object v1, p0, Landroid/app/Dialog;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-interface {v1, p0, v2, p1}, Landroid/content/DialogInterface$OnKeyListener;->onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_13

    return v3

    :cond_13
    iget-object v1, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, p1}, Landroid/view/Window;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1c

    return v3

    :cond_1c
    iget-object v1, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    if-eqz v1, :cond_26

    iget-object v0, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    :cond_26
    invoke-virtual {p1, p0, v0, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/app/Dialog;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method dispatchOnCreate(Landroid/os/Bundle;)V
    .registers 3

    iget-boolean v0, p0, Landroid/app/Dialog;->mCreated:Z

    if-nez v0, :cond_a

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Dialog;->mCreated:Z

    :cond_a
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 6

    const/4 v3, -0x1

    invoke-virtual {p0}, Landroid/app/Dialog;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v2, v3, :cond_2d

    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v2, v3, :cond_2b

    const/4 v0, 0x1

    :goto_26
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFullScreen(Z)V

    const/4 v2, 0x0

    return v2

    :cond_2b
    const/4 v0, 0x0

    goto :goto_26

    :cond_2d
    const/4 v0, 0x0

    goto :goto_26
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public findViewById(I)Landroid/view/View;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getActionBar()Landroid/app/ActionBar;
    .registers 2

    iget-object v0, p0, Landroid/app/Dialog;->mActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentFocus()Landroid/view/View;
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    if-eqz v1, :cond_b

    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    :cond_b
    return-object v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .registers 2

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public final getOwnerActivity()Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Landroid/app/Dialog;->mOwnerActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public final getSearchEvent()Landroid/view/SearchEvent;
    .registers 2

    iget-object v0, p0, Landroid/app/Dialog;->mSearchEvent:Landroid/view/SearchEvent;

    return-object v0
.end method

.method public final getVolumeControlStream()I
    .registers 2

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getVolumeControlStream()I

    move-result v0

    return v0
.end method

.method public getWindow()Landroid/view/Window;
    .registers 2

    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    return-object v0
.end method

.method public hide()V
    .registers 3

    iget-object v0, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    return-void
.end method

.method public invalidateOptionsMenu()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->invalidatePanelMenu(I)V

    :cond_e
    return-void
.end method

.method public isShowing()Z
    .registers 2

    iget-boolean v0, p0, Landroid/app/Dialog;->mShowing:Z

    return v0
.end method

.method synthetic lambda$-android_app_Dialog_6818()V
    .registers 2

    iget-boolean v0, p0, Landroid/app/Dialog;->mCancelable:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    :cond_7
    return-void
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .registers 3

    iget-object v0, p0, Landroid/app/Dialog;->mActionMode:Landroid/view/ActionMode;

    if-ne p1, v0, :cond_7

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Dialog;->mActionMode:Landroid/view/ActionMode;

    :cond_7
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .registers 2

    iput-object p1, p0, Landroid/app/Dialog;->mActionMode:Landroid/view/ActionMode;

    return-void
.end method

.method public onAttachedToWindow()V
    .registers 1

    return-void
.end method

.method public onBackPressed()V
    .registers 2

    iget-boolean v0, p0, Landroid/app/Dialog;->mCancelable:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    :cond_7
    return-void
.end method

.method public onContentChanged()V
    .registers 1

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public onContextMenuClosed(Landroid/view/Menu;)V
    .registers 2

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 4

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_8

    invoke-virtual {p0, p2}, Landroid/app/Dialog;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    :cond_8
    return v0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public onDetachedFromWindow()V
    .registers 1

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_8

    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    const/4 v0, 0x1

    return v0

    :cond_8
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

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_16

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Landroid/app/Dialog;->onBackPressed()V

    const/4 v0, 0x1

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .registers 5

    const/4 v1, 0x1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_a

    iget-object v0, p0, Landroid/app/Dialog;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->dispatchMenuVisibilityChanged(Z)V

    :cond_a
    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .registers 2

    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .registers 5

    const/16 v0, 0x8

    if-ne p1, v0, :cond_a

    iget-object v0, p0, Landroid/app/Dialog;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->dispatchMenuVisibilityChanged(Z)V

    :cond_a
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_10

    if-eqz p3, :cond_10

    invoke-virtual {p0, p3}, Landroid/app/Dialog;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {p3}, Landroid/view/Menu;->hasVisibleItems()Z

    move-result v0

    :cond_f
    return v0

    :cond_10
    const/4 v0, 0x1

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4

    const-string/jumbo v1, "android:dialogHierarchy"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->dispatchOnCreate(Landroid/os/Bundle;)V

    iget-object v1, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->restoreHierarchyState(Landroid/os/Bundle;)V

    const-string/jumbo v1, "android:dialogShowing"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    :cond_1e
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .registers 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "android:dialogShowing"

    iget-boolean v2, p0, Landroid/app/Dialog;->mShowing:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v1, p0, Landroid/app/Dialog;->mCreated:Z

    if-eqz v1, :cond_1d

    const-string/jumbo v1, "android:dialogHierarchy"

    iget-object v2, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->saveHierarchyState()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1d
    return-object v0
.end method

.method public onSearchRequested()Z
    .registers 7

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v4, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "search"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    invoke-direct {p0}, Landroid/app/Dialog;->getAssociatedActivity()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_23

    invoke-virtual {v0, v3}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v4

    if-eqz v4, :cond_23

    move-object v4, v1

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/app/SearchManager;->startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;Z)V

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    const/4 v1, 0x1

    return v1

    :cond_23
    return v2
.end method

.method public onSearchRequested(Landroid/view/SearchEvent;)Z
    .registers 3

    iput-object p1, p0, Landroid/app/Dialog;->mSearchEvent:Landroid/view/SearchEvent;

    invoke-virtual {p0}, Landroid/app/Dialog;->onSearchRequested()Z

    move-result v0

    return v0
.end method

.method protected onStart()V
    .registers 3

    iget-object v0, p0, Landroid/app/Dialog;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/app/Dialog;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setShowHideAnimationEnabled(Z)V

    :cond_a
    return-void
.end method

.method protected onStop()V
    .registers 3

    iget-object v0, p0, Landroid/app/Dialog;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/app/Dialog;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setShowHideAnimationEnabled(Z)V

    :cond_a
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    iget-boolean v0, p0, Landroid/app/Dialog;->mCancelable:Z

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Landroid/app/Dialog;->mShowing:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    iget-object v1, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Landroid/view/Window;->shouldCloseOnTouch(Landroid/content/Context;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    const/4 v0, 0x1

    return v0

    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .registers 4

    iget-object v0, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/app/Dialog;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    invoke-interface {v0, v1, p1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_b
    return-void
.end method

.method public onWindowDismissed(ZZ)V
    .registers 3

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2

    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/app/Dialog;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_10

    iget v0, p0, Landroid/app/Dialog;->mActionModeTypeStarting:I

    if-nez v0, :cond_10

    iget-object v0, p0, Landroid/app/Dialog;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0

    :cond_10
    return-object v1
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .registers 5

    const/4 v1, 0x0

    :try_start_1
    iput p2, p0, Landroid/app/Dialog;->mActionModeTypeStarting:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_a

    move-result-object v0

    iput v1, p0, Landroid/app/Dialog;->mActionModeTypeStarting:I

    return-object v0

    :catchall_a
    move-exception v0

    iput v1, p0, Landroid/app/Dialog;->mActionModeTypeStarting:I

    throw v0
.end method

.method public openContextMenu(Landroid/view/View;)V
    .registers 2

    invoke-virtual {p1}, Landroid/view/View;->showContextMenu()Z

    return-void
.end method

.method public openOptionsMenu()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v2}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->openPanel(ILandroid/view/KeyEvent;)V

    :cond_f
    return-void
.end method

.method public registerForContextMenu(Landroid/view/View;)V
    .registers 2

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    return-void
.end method

.method public final requestWindowFeature(I)Z
    .registers 3

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->requestFeature(I)Z

    move-result v0

    return v0
.end method

.method public setCancelMessage(Landroid/os/Message;)V
    .registers 2

    iput-object p1, p0, Landroid/app/Dialog;->mCancelMessage:Landroid/os/Message;

    return-void
.end method

.method public setCancelable(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/app/Dialog;->mCancelable:Z

    invoke-direct {p0}, Landroid/app/Dialog;->updateWindowForCancelable()V

    return-void
.end method

.method public setCanceledOnTouchOutside(Z)V
    .registers 3

    if-eqz p1, :cond_e

    iget-boolean v0, p0, Landroid/app/Dialog;->mCancelable:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Dialog;->mCancelable:Z

    invoke-direct {p0}, Landroid/app/Dialog;->updateWindowForCancelable()V

    :cond_e
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    return-void
.end method

.method public setContentView(I)V
    .registers 3

    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setContentView(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setDismissMessage(Landroid/os/Message;)V
    .registers 2

    iput-object p1, p0, Landroid/app/Dialog;->mDismissMessage:Landroid/os/Message;

    return-void
.end method

.method public final setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V
    .registers 4

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setFeatureDrawableAlpha(II)V
    .registers 4

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawableAlpha(II)V

    return-void
.end method

.method public final setFeatureDrawableResource(II)V
    .registers 4

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawableResource(II)V

    return-void
.end method

.method public final setFeatureDrawableUri(ILandroid/net/Uri;)V
    .registers 4

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawableUri(ILandroid/net/Uri;)V

    return-void
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/app/Dialog;->mCancelAndDismissTaken:Ljava/lang/String;

    if-eqz v0, :cond_28

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "OnCancelListener is already taken by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Dialog;->mCancelAndDismissTaken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " and can not be replaced."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    if-eqz p1, :cond_35

    iget-object v0, p0, Landroid/app/Dialog;->mListenersHandler:Landroid/os/Handler;

    const/16 v1, 0x44

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Dialog;->mCancelMessage:Landroid/os/Message;

    :goto_34
    return-void

    :cond_35
    iput-object v1, p0, Landroid/app/Dialog;->mCancelMessage:Landroid/os/Message;

    goto :goto_34
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/app/Dialog;->mCancelAndDismissTaken:Ljava/lang/String;

    if-eqz v0, :cond_28

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "OnDismissListener is already taken by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Dialog;->mCancelAndDismissTaken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " and can not be replaced."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    if-eqz p1, :cond_35

    iget-object v0, p0, Landroid/app/Dialog;->mListenersHandler:Landroid/os/Handler;

    const/16 v1, 0x43

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Dialog;->mDismissMessage:Landroid/os/Message;

    :goto_34
    return-void

    :cond_35
    iput-object v1, p0, Landroid/app/Dialog;->mDismissMessage:Landroid/os/Message;

    goto :goto_34
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V
    .registers 2

    iput-object p1, p0, Landroid/app/Dialog;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    return-void
.end method

.method public setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_e

    iget-object v0, p0, Landroid/app/Dialog;->mListenersHandler:Landroid/os/Handler;

    const/16 v1, 0x45

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Dialog;->mShowMessage:Landroid/os/Message;

    :goto_d
    return-void

    :cond_e
    iput-object v0, p0, Landroid/app/Dialog;->mShowMessage:Landroid/os/Message;

    goto :goto_d
.end method

.method public final setOwnerActivity(Landroid/app/Activity;)V
    .registers 4

    iput-object p1, p0, Landroid/app/Dialog;->mOwnerActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Dialog;->mOwnerActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getVolumeControlStream()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setVolumeControlStream(I)V

    return-void
.end method

.method public setTitle(I)V
    .registers 3

    iget-object v0, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setVolumeControlStream(I)V
    .registers 3

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setVolumeControlStream(I)V

    return-void
.end method

.method public show()V
    .registers 9

    const/4 v7, 0x0

    const/16 v6, 0x8

    const/4 v5, 0x0

    iget-boolean v4, p0, Landroid/app/Dialog;->mShowing:Z

    if-eqz v4, :cond_1f

    iget-object v4, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    if-eqz v4, :cond_1e

    iget-object v4, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v6}, Landroid/view/Window;->hasFeature(I)Z

    move-result v4

    if-eqz v4, :cond_19

    iget-object v4, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v6}, Landroid/view/Window;->invalidatePanelMenu(I)V

    :cond_19
    iget-object v4, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_1e
    return-void

    :cond_1f
    iput-boolean v5, p0, Landroid/app/Dialog;->mCanceled:Z

    iget-boolean v4, p0, Landroid/app/Dialog;->mCreated:Z

    if-nez v4, :cond_83

    invoke-virtual {p0, v7}, Landroid/app/Dialog;->dispatchOnCreate(Landroid/os/Bundle;)V

    :goto_28
    invoke-virtual {p0}, Landroid/app/Dialog;->onStart()V

    iget-object v4, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    iget-object v4, p0, Landroid/app/Dialog;->mActionBar:Landroid/app/ActionBar;

    if-nez v4, :cond_5a

    iget-object v4, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v6}, Landroid/view/Window;->hasFeature(I)Z

    move-result v4

    if-eqz v4, :cond_5a

    iget-object v4, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v4, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    iget v5, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v4, v5}, Landroid/view/Window;->setDefaultIcon(I)V

    iget-object v4, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    iget v5, v1, Landroid/content/pm/ApplicationInfo;->logo:I

    invoke-virtual {v4, v5}, Landroid/view/Window;->setDefaultLogo(I)V

    new-instance v4, Lcom/android/internal/app/WindowDecorActionBar;

    invoke-direct {v4, p0}, Lcom/android/internal/app/WindowDecorActionBar;-><init>(Landroid/app/Dialog;)V

    iput-object v4, p0, Landroid/app/Dialog;->mActionBar:Landroid/app/ActionBar;

    :cond_5a
    iget-object v4, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v4, v4, 0x100

    if-nez v4, :cond_75

    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v3}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    invoke-virtual {v3, v2}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    or-int/lit16 v4, v4, 0x100

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    move-object v2, v3

    :cond_75
    iget-object v4, p0, Landroid/app/Dialog;->mWindowManager:Landroid/view/WindowManager;

    iget-object v5, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    invoke-interface {v4, v5, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/app/Dialog;->mShowing:Z

    invoke-direct {p0}, Landroid/app/Dialog;->sendShowMessage()V

    return-void

    :cond_83
    iget-object v4, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v4, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_28
.end method

.method public takeCancelAndDismissListeners(Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnDismissListener;)Z
    .registers 6

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/app/Dialog;->mCancelAndDismissTaken:Ljava/lang/String;

    if-eqz v0, :cond_11

    iput-object v1, p0, Landroid/app/Dialog;->mCancelAndDismissTaken:Ljava/lang/String;

    :cond_7
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {p0, p3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iput-object p1, p0, Landroid/app/Dialog;->mCancelAndDismissTaken:Ljava/lang/String;

    const/4 v0, 0x1

    return v0

    :cond_11
    iget-object v0, p0, Landroid/app/Dialog;->mCancelMessage:Landroid/os/Message;

    if-nez v0, :cond_19

    iget-object v0, p0, Landroid/app/Dialog;->mDismissMessage:Landroid/os/Message;

    if-eqz v0, :cond_7

    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method public takeKeyEvents(Z)V
    .registers 3

    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->takeKeyEvents(Z)V

    return-void
.end method

.method public unregisterForContextMenu(Landroid/view/View;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    return-void
.end method
