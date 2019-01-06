.class final Landroid/inputmethodservice/IInputMethodWrapper$InputMethodSessionCallbackWrapper;
.super Ljava/lang/Object;
.source "IInputMethodWrapper.java"

# interfaces
.implements Landroid/view/inputmethod/InputMethod$SessionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/IInputMethodWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "InputMethodSessionCallbackWrapper"
.end annotation


# instance fields
.field final mCb:Lcom/android/internal/view/IInputSessionCallback;

.field final mChannel:Landroid/view/InputChannel;

.field final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/InputChannel;Lcom/android/internal/view/IInputSessionCallback;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/inputmethodservice/IInputMethodWrapper$InputMethodSessionCallbackWrapper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/inputmethodservice/IInputMethodWrapper$InputMethodSessionCallbackWrapper;->mChannel:Landroid/view/InputChannel;

    iput-object p3, p0, Landroid/inputmethodservice/IInputMethodWrapper$InputMethodSessionCallbackWrapper;->mCb:Lcom/android/internal/view/IInputSessionCallback;

    return-void
.end method


# virtual methods
.method public sessionCreated(Landroid/view/inputmethod/InputMethodSession;)V
    .registers 6

    if-eqz p1, :cond_11

    :try_start_2
    new-instance v1, Landroid/inputmethodservice/IInputMethodSessionWrapper;

    iget-object v2, p0, Landroid/inputmethodservice/IInputMethodWrapper$InputMethodSessionCallbackWrapper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/inputmethodservice/IInputMethodWrapper$InputMethodSessionCallbackWrapper;->mChannel:Landroid/view/InputChannel;

    invoke-direct {v1, v2, p1, v3}, Landroid/inputmethodservice/IInputMethodSessionWrapper;-><init>(Landroid/content/Context;Landroid/view/inputmethod/InputMethodSession;Landroid/view/InputChannel;)V

    iget-object v2, p0, Landroid/inputmethodservice/IInputMethodWrapper$InputMethodSessionCallbackWrapper;->mCb:Lcom/android/internal/view/IInputSessionCallback;

    invoke-interface {v2, v1}, Lcom/android/internal/view/IInputSessionCallback;->sessionCreated(Lcom/android/internal/view/IInputMethodSession;)V

    :goto_10
    return-void

    :cond_11
    iget-object v2, p0, Landroid/inputmethodservice/IInputMethodWrapper$InputMethodSessionCallbackWrapper;->mChannel:Landroid/view/InputChannel;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Landroid/inputmethodservice/IInputMethodWrapper$InputMethodSessionCallbackWrapper;->mChannel:Landroid/view/InputChannel;

    invoke-virtual {v2}, Landroid/view/InputChannel;->dispose()V

    :cond_1a
    iget-object v2, p0, Landroid/inputmethodservice/IInputMethodWrapper$InputMethodSessionCallbackWrapper;->mCb:Lcom/android/internal/view/IInputSessionCallback;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/internal/view/IInputSessionCallback;->sessionCreated(Lcom/android/internal/view/IInputMethodSession;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_20} :catch_21

    goto :goto_10

    :catch_21
    move-exception v0

    goto :goto_10
.end method
