.class public Landroid/inputmethodservice/SoftInputWindow;
.super Landroid/app/Dialog;
.source "SoftInputWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/SoftInputWindow$Callback;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SoftInputWindow"


# instance fields
.field private final mBounds:Landroid/graphics/Rect;

.field final mCallback:Landroid/inputmethodservice/SoftInputWindow$Callback;

.field final mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

.field final mGravity:I

.field final mKeyEventCallback:Landroid/view/KeyEvent$Callback;

.field final mName:Ljava/lang/String;

.field private mService:Lcom/android/internal/view/IInputMethodManager;

.field final mTakesFocus:Z

.field final mWindowType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILandroid/inputmethodservice/SoftInputWindow$Callback;Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;IIZ)V
    .registers 11

    invoke-direct {p0, p1, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/SoftInputWindow;->mBounds:Landroid/graphics/Rect;

    iput-object p2, p0, Landroid/inputmethodservice/SoftInputWindow;->mName:Ljava/lang/String;

    iput-object p4, p0, Landroid/inputmethodservice/SoftInputWindow;->mCallback:Landroid/inputmethodservice/SoftInputWindow$Callback;

    iput-object p5, p0, Landroid/inputmethodservice/SoftInputWindow;->mKeyEventCallback:Landroid/view/KeyEvent$Callback;

    iput-object p6, p0, Landroid/inputmethodservice/SoftInputWindow;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    iput p7, p0, Landroid/inputmethodservice/SoftInputWindow;->mWindowType:I

    iput p8, p0, Landroid/inputmethodservice/SoftInputWindow;->mGravity:I

    iput-boolean p9, p0, Landroid/inputmethodservice/SoftInputWindow;->mTakesFocus:Z

    invoke-direct {p0}, Landroid/inputmethodservice/SoftInputWindow;->initDockWindow()V

    return-void
.end method

.method private initDockWindow()V
    .registers 5

    invoke-virtual {p0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v3, p0, Landroid/inputmethodservice/SoftInputWindow;->mWindowType:I

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v3, p0, Landroid/inputmethodservice/SoftInputWindow;->mName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget v3, p0, Landroid/inputmethodservice/SoftInputWindow;->mGravity:I

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-direct {p0, v0}, Landroid/inputmethodservice/SoftInputWindow;->updateWidthHeight(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/16 v2, 0x100

    const/16 v1, 0x10a

    iget-boolean v3, p0, Landroid/inputmethodservice/SoftInputWindow;->mTakesFocus:Z

    if-nez v3, :cond_31

    const/16 v2, 0x108

    :goto_29
    invoke-virtual {p0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/view/Window;->setFlags(II)V

    return-void

    :cond_31
    const/16 v2, 0x120

    const/16 v1, 0x12a

    goto :goto_29
.end method

.method private updateWidthHeight(Landroid/view/WindowManager$LayoutParams;)V
    .registers 6

    const/4 v3, -0x1

    const/4 v2, -0x2

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v1, 0x30

    if-eq v0, v1, :cond_e

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v1, 0x50

    if-ne v0, v1, :cond_13

    :cond_e
    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    :goto_12
    return-void

    :cond_13
    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_12
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    invoke-virtual {p0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Landroid/inputmethodservice/SoftInputWindow;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v2, p0, Landroid/inputmethodservice/SoftInputWindow;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/inputmethodservice/SoftInputWindow;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/inputmethodservice/SoftInputWindow;->mBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    iget-object v5, p0, Landroid/inputmethodservice/SoftInputWindow;->mBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/view/MotionEvent;->isWithinBoundsNoHistory(FFFF)Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2

    :cond_30
    iget-object v2, p0, Landroid/inputmethodservice/SoftInputWindow;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/inputmethodservice/SoftInputWindow;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/inputmethodservice/SoftInputWindow;->mBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    iget-object v5, p0, Landroid/inputmethodservice/SoftInputWindow;->mBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/view/MotionEvent;->clampNoHistory(FFFF)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    return v0
.end method

.method public getGravity()I
    .registers 2

    invoke-virtual {p0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    return v0
.end method

.method public onBackPressed()V
    .registers 2

    iget-object v0, p0, Landroid/inputmethodservice/SoftInputWindow;->mCallback:Landroid/inputmethodservice/SoftInputWindow$Callback;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/inputmethodservice/SoftInputWindow;->mCallback:Landroid/inputmethodservice/SoftInputWindow$Callback;

    invoke-interface {v0}, Landroid/inputmethodservice/SoftInputWindow$Callback;->onBackPressed()V

    :goto_9
    return-void

    :cond_a
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    goto :goto_9
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    iget-object v0, p0, Landroid/inputmethodservice/SoftInputWindow;->mKeyEventCallback:Landroid/view/KeyEvent$Callback;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/inputmethodservice/SoftInputWindow;->mKeyEventCallback:Landroid/view/KeyEvent$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/KeyEvent$Callback;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .registers 4

    iget-object v0, p0, Landroid/inputmethodservice/SoftInputWindow;->mKeyEventCallback:Landroid/view/KeyEvent$Callback;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/inputmethodservice/SoftInputWindow;->mKeyEventCallback:Landroid/view/KeyEvent$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/KeyEvent$Callback;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .registers 5

    iget-object v0, p0, Landroid/inputmethodservice/SoftInputWindow;->mKeyEventCallback:Landroid/view/KeyEvent$Callback;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/inputmethodservice/SoftInputWindow;->mKeyEventCallback:Landroid/view/KeyEvent$Callback;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/KeyEvent$Callback;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    invoke-super {p0, p1, p2, p3}, Landroid/app/Dialog;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4

    iget-object v0, p0, Landroid/inputmethodservice/SoftInputWindow;->mKeyEventCallback:Landroid/view/KeyEvent$Callback;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/inputmethodservice/SoftInputWindow;->mKeyEventCallback:Landroid/view/KeyEvent$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/KeyEvent$Callback;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowFocusChanged(Z)V

    iget-object v0, p0, Landroid/inputmethodservice/SoftInputWindow;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    invoke-virtual {v0}, Landroid/view/KeyEvent$DispatcherState;->reset()V

    return-void
.end method

.method public setGravity(I)V
    .registers 4

    invoke-virtual {p0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-direct {p0, v0}, Landroid/inputmethodservice/SoftInputWindow;->updateWidthHeight(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public setToken(Landroid/os/IBinder;)V
    .registers 4

    invoke-virtual {p0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {p0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method showWithTokenCheck()V
    .registers 5

    iget-object v2, p0, Landroid/inputmethodservice/SoftInputWindow;->mService:Lcom/android/internal/view/IInputMethodManager;

    if-nez v2, :cond_11

    :try_start_4
    const-string/jumbo v2, "input_method"

    invoke-static {v2}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/view/IInputMethodManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodManager;

    move-result-object v2

    iput-object v2, p0, Landroid/inputmethodservice/SoftInputWindow;->mService:Lcom/android/internal/view/IInputMethodManager;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_11} :catch_1f

    :cond_11
    :goto_11
    iget-object v2, p0, Landroid/inputmethodservice/SoftInputWindow;->mService:Lcom/android/internal/view/IInputMethodManager;

    if-eqz v2, :cond_1b

    invoke-virtual {p0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-nez v2, :cond_2a

    :cond_1b
    invoke-virtual {p0}, Landroid/inputmethodservice/SoftInputWindow;->show()V

    return-void

    :catch_1f
    move-exception v1

    const-string/jumbo v2, "SoftInputWindow"

    const-string/jumbo v3, "Fail to get input method service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    :cond_2a
    invoke-virtual {p0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_1b

    invoke-virtual {p0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-eqz v2, :cond_1b

    :try_start_40
    iget-object v2, p0, Landroid/inputmethodservice/SoftInputWindow;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-virtual {p0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-interface {v2, v3}, Lcom/android/internal/view/IInputMethodManager;->isTokenValid(Landroid/os/IBinder;)Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-virtual {p0}, Landroid/inputmethodservice/SoftInputWindow;->show()V

    :goto_55
    return-void

    :cond_56
    const-string/jumbo v2, "SoftInputWindow"

    const-string/jumbo v3, "Token attached by input_method is invalid"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5f
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_5f} :catch_60

    goto :goto_55

    :catch_60
    move-exception v0

    const-string/jumbo v2, "SoftInputWindow"

    const-string/jumbo v3, "Fail to invoke IMMS"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/inputmethodservice/SoftInputWindow;->show()V

    return-void
.end method
