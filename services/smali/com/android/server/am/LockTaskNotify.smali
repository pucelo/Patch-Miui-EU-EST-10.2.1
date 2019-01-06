.class public Lcom/android/server/am/LockTaskNotify;
.super Ljava/lang/Object;
.source "LockTaskNotify.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/LockTaskNotify$H;
    }
.end annotation


# static fields
.field private static final SHOW_TOAST_MINIMUM_INTERVAL:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "LockTaskNotify"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Lcom/android/server/am/LockTaskNotify$H;

.field private mLastShowToastTime:J

.field private mLastToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/LockTaskNotify;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/am/LockTaskNotify$H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/LockTaskNotify$H;-><init>(Lcom/android/server/am/LockTaskNotify;Lcom/android/server/am/LockTaskNotify$H;)V

    iput-object v0, p0, Lcom/android/server/am/LockTaskNotify;->mHandler:Lcom/android/server/am/LockTaskNotify$H;

    return-void
.end method

.method private makeAllUserToastAndShow(Ljava/lang/String;)Landroid/widget/Toast;
    .registers 5

    iget-object v1, p0, Lcom/android/server/am/LockTaskNotify;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-object v0
.end method


# virtual methods
.method public handleShowToast(I)V
    .registers 10

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v3, :cond_10

    iget-object v3, p0, Lcom/android/server/am/LockTaskNotify;->mContext:Landroid/content/Context;

    const v4, 0x1040301

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_d
    :goto_d
    if-nez v2, :cond_1d

    return-void

    :cond_10
    const/4 v3, 0x2

    if-ne p1, v3, :cond_d

    iget-object v3, p0, Lcom/android/server/am/LockTaskNotify;->mContext:Landroid/content/Context;

    const v4, 0x10402ff

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_d

    :cond_1d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/android/server/am/LockTaskNotify;->mLastShowToastTime:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x3e8

    cmp-long v3, v4, v6

    if-gez v3, :cond_35

    const-string/jumbo v3, "LockTaskNotify"

    const-string/jumbo v4, "Ignore toast since it is requested in very short interval."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_35
    iget-object v3, p0, Lcom/android/server/am/LockTaskNotify;->mLastToast:Landroid/widget/Toast;

    if-eqz v3, :cond_3e

    iget-object v3, p0, Lcom/android/server/am/LockTaskNotify;->mLastToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->cancel()V

    :cond_3e
    invoke-direct {p0, v2}, Lcom/android/server/am/LockTaskNotify;->makeAllUserToastAndShow(Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/LockTaskNotify;->mLastToast:Landroid/widget/Toast;

    iput-wide v0, p0, Lcom/android/server/am/LockTaskNotify;->mLastShowToastTime:J

    return-void
.end method

.method public show(Z)V
    .registers 4

    const v0, 0x10402fd

    if-eqz p1, :cond_8

    const v0, 0x10402fe

    :cond_8
    iget-object v1, p0, Lcom/android/server/am/LockTaskNotify;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/am/LockTaskNotify;->makeAllUserToastAndShow(Ljava/lang/String;)Landroid/widget/Toast;

    return-void
.end method

.method public showToast(I)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/am/LockTaskNotify;->mHandler:Lcom/android/server/am/LockTaskNotify$H;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/am/LockTaskNotify$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
