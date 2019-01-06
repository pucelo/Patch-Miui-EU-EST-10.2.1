.class final Landroid/view/autofill/AutofillManager$AutofillManagerClient;
.super Landroid/view/autofill/IAutoFillManagerClient$Stub;
.source "AutofillManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/autofill/AutofillManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AutofillManagerClient"
.end annotation


# instance fields
.field private final mAfm:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/autofill/AutofillManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/autofill/AutofillManager;)V
    .registers 3

    invoke-direct {p0}, Landroid/view/autofill/IAutoFillManagerClient$Stub;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic lambda$-android_view_autofill_AutofillManager$AutofillManagerClient_68405(Landroid/view/autofill/AutofillManager;ZZZ)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/view/autofill/AutofillManager;->-wrap12(Landroid/view/autofill/AutofillManager;ZZZ)V

    return-void
.end method

.method static synthetic lambda$-android_view_autofill_AutofillManager$AutofillManagerClient_68709(Landroid/view/autofill/AutofillManager;ILjava/util/List;Ljava/util/List;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/view/autofill/AutofillManager;->-wrap4(Landroid/view/autofill/AutofillManager;ILjava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic lambda$-android_view_autofill_AutofillManager$AutofillManagerClient_69035(Landroid/view/autofill/AutofillManager;IILandroid/content/IntentSender;Landroid/content/Intent;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/autofill/AutofillManager;->-wrap3(Landroid/view/autofill/AutofillManager;IILandroid/content/IntentSender;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic lambda$-android_view_autofill_AutofillManager$AutofillManagerClient_69426(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)V
    .registers 7

    invoke-static/range {p0 .. p6}, Landroid/view/autofill/AutofillManager;->-wrap9(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)V

    return-void
.end method

.method static synthetic lambda$-android_view_autofill_AutofillManager$AutofillManagerClient_69756(Landroid/view/autofill/AutofillManager;Landroid/view/autofill/AutofillId;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/view/autofill/AutofillManager;->-wrap8(Landroid/view/autofill/AutofillManager;Landroid/view/autofill/AutofillId;)V

    return-void
.end method

.method static synthetic lambda$-android_view_autofill_AutofillManager$AutofillManagerClient_70033(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;Z)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/view/autofill/AutofillManager;->-wrap6(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;Z)V

    return-void
.end method

.method static synthetic lambda$-android_view_autofill_AutofillManager$AutofillManagerClient_70325(Landroid/view/autofill/AutofillManager;Landroid/content/IntentSender;Landroid/content/Intent;)V
    .registers 10

    :try_start_0
    invoke-static {p0}, Landroid/view/autofill/AutofillManager;->-get0(Landroid/view/autofill/AutofillManager;)Landroid/content/Context;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    :try_end_c
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_c} :catch_d

    :goto_c
    return-void

    :catch_d
    move-exception v6

    const-string/jumbo v0, "AutofillManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startIntentSender() failed for intent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c
.end method

.method static synthetic lambda$-android_view_autofill_AutofillManager$AutofillManagerClient_70948(Landroid/view/autofill/AutofillManager;I[Landroid/view/autofill/AutofillId;Z[Landroid/view/autofill/AutofillId;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/autofill/AutofillManager;->-wrap13(Landroid/view/autofill/AutofillManager;I[Landroid/view/autofill/AutofillId;Z[Landroid/view/autofill/AutofillId;)V

    return-void
.end method

.method static synthetic lambda$-android_view_autofill_AutofillManager$AutofillManagerClient_71289(Landroid/view/autofill/AutofillManager;IZ)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/view/autofill/AutofillManager;->-wrap10(Landroid/view/autofill/AutofillManager;IZ)V

    return-void
.end method

.method static synthetic lambda$-android_view_autofill_AutofillManager$AutofillManagerClient_71540(Landroid/view/autofill/AutofillManager;I)V
    .registers 2

    invoke-static {p0, p1}, Landroid/view/autofill/AutofillManager;->-wrap11(Landroid/view/autofill/AutofillManager;I)V

    return-void
.end method


# virtual methods
.method public authenticate(IILandroid/content/IntentSender;Landroid/content/Intent;)V
    .registers 11

    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/autofill/AutofillManager;

    if-eqz v3, :cond_16

    new-instance v0, Landroid/view/autofill/-$Lambda$6ub2tg3C-4hyczXTkY_CEW2ET8I$4;

    move v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/view/autofill/-$Lambda$6ub2tg3C-4hyczXTkY_CEW2ET8I$4;-><init>(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v3, v0}, Landroid/view/autofill/AutofillManager;->-wrap7(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    :cond_16
    return-void
.end method

.method public autofill(ILjava/util/List;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/view/autofill/AutofillId;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/autofill/AutofillValue;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    if-eqz v0, :cond_12

    new-instance v1, Landroid/view/autofill/-$Lambda$6ub2tg3C-4hyczXTkY_CEW2ET8I$3;

    invoke-direct {v1, p1, v0, p2, p3}, Landroid/view/autofill/-$Lambda$6ub2tg3C-4hyczXTkY_CEW2ET8I$3;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1}, Landroid/view/autofill/AutofillManager;->-wrap7(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    :cond_12
    return-void
.end method

.method public notifyNoFillUi(ILandroid/view/autofill/AutofillId;Z)V
    .registers 6

    iget-object v1, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    if-eqz v0, :cond_12

    new-instance v1, Landroid/view/autofill/-$Lambda$6ub2tg3C-4hyczXTkY_CEW2ET8I$7;

    invoke-direct {v1, p3, p1, v0, p2}, Landroid/view/autofill/-$Lambda$6ub2tg3C-4hyczXTkY_CEW2ET8I$7;-><init>(ZILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1}, Landroid/view/autofill/AutofillManager;->-wrap7(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    :cond_12
    return-void
.end method

.method public requestHideFillUi(ILandroid/view/autofill/AutofillId;)V
    .registers 5

    iget-object v1, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    if-eqz v0, :cond_12

    new-instance v1, Landroid/view/autofill/-$Lambda$6ub2tg3C-4hyczXTkY_CEW2ET8I;

    invoke-direct {v1, v0, p2}, Landroid/view/autofill/-$Lambda$6ub2tg3C-4hyczXTkY_CEW2ET8I;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1}, Landroid/view/autofill/AutofillManager;->-wrap7(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    :cond_12
    return-void
.end method

.method public requestShowFillUi(ILandroid/view/autofill/AutofillId;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)V
    .registers 15

    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/autofill/AutofillManager;

    if-eqz v4, :cond_18

    new-instance v0, Landroid/view/autofill/-$Lambda$6ub2tg3C-4hyczXTkY_CEW2ET8I$5;

    move v1, p1

    move v2, p3

    move v3, p4

    move-object v5, p2

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/view/autofill/-$Lambda$6ub2tg3C-4hyczXTkY_CEW2ET8I$5;-><init>(IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v4, v0}, Landroid/view/autofill/AutofillManager;->-wrap7(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    :cond_18
    return-void
.end method

.method public setSaveUiState(IZ)V
    .registers 5

    iget-object v1, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    if-eqz v0, :cond_12

    new-instance v1, Landroid/view/autofill/-$Lambda$6ub2tg3C-4hyczXTkY_CEW2ET8I$6;

    invoke-direct {v1, p2, p1, v0}, Landroid/view/autofill/-$Lambda$6ub2tg3C-4hyczXTkY_CEW2ET8I$6;-><init>(ZILjava/lang/Object;)V

    invoke-static {v0, v1}, Landroid/view/autofill/AutofillManager;->-wrap7(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    :cond_12
    return-void
.end method

.method public setSessionFinished(I)V
    .registers 4

    iget-object v1, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    if-eqz v0, :cond_12

    new-instance v1, Landroid/view/autofill/-$Lambda$6ub2tg3C-4hyczXTkY_CEW2ET8I$2;

    invoke-direct {v1, p1, v0}, Landroid/view/autofill/-$Lambda$6ub2tg3C-4hyczXTkY_CEW2ET8I$2;-><init>(ILjava/lang/Object;)V

    invoke-static {v0, v1}, Landroid/view/autofill/AutofillManager;->-wrap7(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    :cond_12
    return-void
.end method

.method public setState(ZZZ)V
    .registers 6

    iget-object v1, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    if-eqz v0, :cond_12

    new-instance v1, Landroid/view/autofill/-$Lambda$6ub2tg3C-4hyczXTkY_CEW2ET8I$9;

    invoke-direct {v1, p1, p2, p3, v0}, Landroid/view/autofill/-$Lambda$6ub2tg3C-4hyczXTkY_CEW2ET8I$9;-><init>(ZZZLjava/lang/Object;)V

    invoke-static {v0, v1}, Landroid/view/autofill/AutofillManager;->-wrap7(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    :cond_12
    return-void
.end method

.method public setTrackedViews(I[Landroid/view/autofill/AutofillId;Z[Landroid/view/autofill/AutofillId;)V
    .registers 11

    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/autofill/AutofillManager;

    if-eqz v3, :cond_16

    new-instance v0, Landroid/view/autofill/-$Lambda$6ub2tg3C-4hyczXTkY_CEW2ET8I$8;

    move v1, p3

    move v2, p1

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/view/autofill/-$Lambda$6ub2tg3C-4hyczXTkY_CEW2ET8I$8;-><init>(ZILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v3, v0}, Landroid/view/autofill/AutofillManager;->-wrap7(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    :cond_16
    return-void
.end method

.method public startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;)V
    .registers 5

    iget-object v1, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    if-eqz v0, :cond_12

    new-instance v1, Landroid/view/autofill/-$Lambda$6ub2tg3C-4hyczXTkY_CEW2ET8I$1;

    invoke-direct {v1, v0, p1, p2}, Landroid/view/autofill/-$Lambda$6ub2tg3C-4hyczXTkY_CEW2ET8I$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1}, Landroid/view/autofill/AutofillManager;->-wrap7(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    :cond_12
    return-void
.end method
