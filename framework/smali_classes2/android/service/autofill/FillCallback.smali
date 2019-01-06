.class public final Landroid/service/autofill/FillCallback;
.super Ljava/lang/Object;
.source "FillCallback.java"


# instance fields
.field private final mCallback:Landroid/service/autofill/IFillCallback;

.field private mCalled:Z

.field private final mRequestId:I


# direct methods
.method public constructor <init>(Landroid/service/autofill/IFillCallback;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/autofill/FillCallback;->mCallback:Landroid/service/autofill/IFillCallback;

    iput p2, p0, Landroid/service/autofill/FillCallback;->mRequestId:I

    return-void
.end method

.method private assertNotCalled()V
    .registers 3

    iget-boolean v0, p0, Landroid/service/autofill/FillCallback;->mCalled:Z

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

    invoke-direct {p0}, Landroid/service/autofill/FillCallback;->assertNotCalled()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/service/autofill/FillCallback;->mCalled:Z

    :try_start_6
    iget-object v1, p0, Landroid/service/autofill/FillCallback;->mCallback:Landroid/service/autofill/IFillCallback;

    invoke-interface {v1, p1}, Landroid/service/autofill/IFillCallback;->onFailure(Ljava/lang/CharSequence;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_c

    :goto_b
    return-void

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    goto :goto_b
.end method

.method public onSuccess(Landroid/service/autofill/FillResponse;)V
    .registers 4

    invoke-direct {p0}, Landroid/service/autofill/FillCallback;->assertNotCalled()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/service/autofill/FillCallback;->mCalled:Z

    if-eqz p1, :cond_d

    iget v1, p0, Landroid/service/autofill/FillCallback;->mRequestId:I

    invoke-virtual {p1, v1}, Landroid/service/autofill/FillResponse;->setRequestId(I)V

    :cond_d
    :try_start_d
    iget-object v1, p0, Landroid/service/autofill/FillCallback;->mCallback:Landroid/service/autofill/IFillCallback;

    invoke-interface {v1, p1}, Landroid/service/autofill/IFillCallback;->onSuccess(Landroid/service/autofill/FillResponse;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_13

    :goto_12
    return-void

    :catch_13
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    goto :goto_12
.end method
