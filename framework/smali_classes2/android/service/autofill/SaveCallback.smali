.class public final Landroid/service/autofill/SaveCallback;
.super Ljava/lang/Object;
.source "SaveCallback.java"


# instance fields
.field private final mCallback:Landroid/service/autofill/ISaveCallback;

.field private mCalled:Z


# direct methods
.method constructor <init>(Landroid/service/autofill/ISaveCallback;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/autofill/SaveCallback;->mCallback:Landroid/service/autofill/ISaveCallback;

    return-void
.end method

.method private assertNotCalled()V
    .registers 3

    iget-boolean v0, p0, Landroid/service/autofill/SaveCallback;->mCalled:Z

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/CharSequence;)V
    .registers 4

    invoke-direct {p0}, Landroid/service/autofill/SaveCallback;->assertNotCalled()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/service/autofill/SaveCallback;->mCalled:Z

    :try_start_6
    iget-object v1, p0, Landroid/service/autofill/SaveCallback;->mCallback:Landroid/service/autofill/ISaveCallback;

    invoke-interface {v1, p1}, Landroid/service/autofill/ISaveCallback;->onFailure(Ljava/lang/CharSequence;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_c

    :goto_b
    return-void

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    goto :goto_b
.end method

.method public onSuccess()V
    .registers 3

    invoke-direct {p0}, Landroid/service/autofill/SaveCallback;->assertNotCalled()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/service/autofill/SaveCallback;->mCalled:Z

    :try_start_6
    iget-object v1, p0, Landroid/service/autofill/SaveCallback;->mCallback:Landroid/service/autofill/ISaveCallback;

    invoke-interface {v1}, Landroid/service/autofill/ISaveCallback;->onSuccess()V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_c

    :goto_b
    return-void

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    goto :goto_b
.end method
