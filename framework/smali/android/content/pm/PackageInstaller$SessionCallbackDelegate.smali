.class Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;
.super Landroid/content/pm/IPackageInstallerCallback$Stub;
.source "PackageInstaller.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SessionCallbackDelegate"
.end annotation


# static fields
.field private static final MSG_SESSION_ACTIVE_CHANGED:I = 0x3

.field private static final MSG_SESSION_BADGING_CHANGED:I = 0x2

.field private static final MSG_SESSION_CREATED:I = 0x1

.field private static final MSG_SESSION_FINISHED:I = 0x5

.field private static final MSG_SESSION_PROGRESS_CHANGED:I = 0x4


# instance fields
.field final mCallback:Landroid/content/pm/PackageInstaller$SessionCallback;

.field final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageInstaller$SessionCallback;Landroid/os/Looper;)V
    .registers 4

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallerCallback$Stub;-><init>()V

    iput-object p1, p0, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;->mCallback:Landroid/content/pm/PackageInstaller$SessionCallback;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 8

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_3c

    return v2

    :pswitch_a
    iget-object v2, p0, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;->mCallback:Landroid/content/pm/PackageInstaller$SessionCallback;

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageInstaller$SessionCallback;->onCreated(I)V

    return v3

    :pswitch_10
    iget-object v2, p0, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;->mCallback:Landroid/content/pm/PackageInstaller$SessionCallback;

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageInstaller$SessionCallback;->onBadgingChanged(I)V

    return v3

    :pswitch_16
    iget v2, p1, Landroid/os/Message;->arg2:I

    if-eqz v2, :cond_21

    const/4 v0, 0x1

    :goto_1b
    iget-object v2, p0, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;->mCallback:Landroid/content/pm/PackageInstaller$SessionCallback;

    invoke-virtual {v2, v1, v0}, Landroid/content/pm/PackageInstaller$SessionCallback;->onActiveChanged(IZ)V

    return v3

    :cond_21
    const/4 v0, 0x0

    goto :goto_1b

    :pswitch_23
    iget-object v4, p0, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;->mCallback:Landroid/content/pm/PackageInstaller$SessionCallback;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v4, v1, v2}, Landroid/content/pm/PackageInstaller$SessionCallback;->onProgressChanged(IF)V

    return v3

    :pswitch_31
    iget-object v4, p0, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;->mCallback:Landroid/content/pm/PackageInstaller$SessionCallback;

    iget v5, p1, Landroid/os/Message;->arg2:I

    if-eqz v5, :cond_38

    move v2, v3

    :cond_38
    invoke-virtual {v4, v1, v2}, Landroid/content/pm/PackageInstaller$SessionCallback;->onFinished(IZ)V

    return v3

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_a
        :pswitch_10
        :pswitch_16
        :pswitch_23
        :pswitch_31
    .end packed-switch
.end method

.method public onSessionActiveChanged(IZ)V
    .registers 6

    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;->mHandler:Landroid/os/Handler;

    if-eqz p2, :cond_e

    const/4 v0, 0x1

    :goto_5
    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_e
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onSessionBadgingChanged(I)V
    .registers 5

    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onSessionCreated(I)V
    .registers 5

    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onSessionFinished(IZ)V
    .registers 6

    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;->mHandler:Landroid/os/Handler;

    if-eqz p2, :cond_e

    const/4 v0, 0x1

    :goto_5
    const/4 v2, 0x5

    invoke-virtual {v1, v2, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_e
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onSessionProgressChanged(IF)V
    .registers 7

    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;->mHandler:Landroid/os/Handler;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method