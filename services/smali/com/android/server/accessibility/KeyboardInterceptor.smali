.class public Lcom/android/server/accessibility/KeyboardInterceptor;
.super Ljava/lang/Object;
.source "KeyboardInterceptor.java"

# interfaces
.implements Lcom/android/server/accessibility/EventStreamTransformation;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "KeyboardInterceptor"

.field private static final MESSAGE_PROCESS_QUEUED_EVENTS:I = 0x1


# instance fields
.field private final mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

.field private mEventQueueEnd:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

.field private mEventQueueStart:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

.field private final mHandler:Landroid/os/Handler;

.field private mNext:Lcom/android/server/accessibility/EventStreamTransformation;

.field private final mPolicy:Landroid/view/WindowManagerPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/view/WindowManagerPolicy;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    iput-object p2, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mPolicy:Landroid/view/WindowManagerPolicy;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/view/WindowManagerPolicy;Landroid/os/Handler;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    iput-object p2, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mPolicy:Landroid/view/WindowManagerPolicy;

    iput-object p3, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private addEventToQueue(Landroid/view/KeyEvent;IJ)V
    .registers 12

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    add-long v0, v4, p3

    iget-object v3, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mEventQueueStart:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    if-nez v3, :cond_16

    invoke-static {p1, p2, v0, v1}, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;->obtain(Landroid/view/KeyEvent;IJ)Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mEventQueueStart:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    iput-object v3, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mEventQueueEnd:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    invoke-direct {p0}, Lcom/android/server/accessibility/KeyboardInterceptor;->scheduleProcessQueuedEvents()V

    return-void

    :cond_16
    invoke-static {p1, p2, v0, v1}, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;->obtain(Landroid/view/KeyEvent;IJ)Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mEventQueueStart:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    iput-object v3, v2, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;->next:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    iget-object v3, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mEventQueueStart:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    iput-object v2, v3, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;->previous:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    iput-object v2, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mEventQueueStart:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    return-void
.end method

.method private getEventDelay(Landroid/view/KeyEvent;I)J
    .registers 7

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x19

    if-eq v0, v1, :cond_c

    const/16 v1, 0x18

    if-ne v0, v1, :cond_14

    :cond_c
    iget-object v1, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/4 v2, 0x0

    invoke-interface {v1, v2, p1, p2}, Landroid/view/WindowManagerPolicy;->interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide v2

    return-wide v2

    :cond_14
    const-wide/16 v2, 0x0

    return-wide v2
.end method

.method private processQueuedEvents()V
    .registers 13

    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    :cond_7
    :goto_7
    iget-object v5, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mEventQueueEnd:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    if-eqz v5, :cond_55

    iget-object v5, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mEventQueueEnd:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    iget-wide v6, v5, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;->dispatchTime:J

    cmp-long v5, v6, v0

    if-gtz v5, :cond_55

    iget-object v5, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mEventQueueEnd:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    iget-object v5, v5, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;->event:Landroid/view/KeyEvent;

    iget-object v6, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mEventQueueEnd:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    iget v6, v6, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;->policyFlags:I

    invoke-direct {p0, v5, v6}, Lcom/android/server/accessibility/KeyboardInterceptor;->getEventDelay(Landroid/view/KeyEvent;I)J

    move-result-wide v2

    cmp-long v5, v2, v10

    if-lez v5, :cond_2a

    iget-object v5, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mEventQueueEnd:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    add-long v6, v0, v2

    iput-wide v6, v5, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;->dispatchTime:J

    return-void

    :cond_2a
    cmp-long v5, v2, v10

    if-nez v5, :cond_3b

    iget-object v5, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v6, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mEventQueueEnd:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    iget-object v6, v6, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;->event:Landroid/view/KeyEvent;

    iget-object v7, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mEventQueueEnd:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    iget v7, v7, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;->policyFlags:I

    invoke-virtual {v5, v6, v7}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyKeyEvent(Landroid/view/KeyEvent;I)Z

    :cond_3b
    iget-object v4, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mEventQueueEnd:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    iget-object v5, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mEventQueueEnd:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    iget-object v5, v5, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;->previous:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    iput-object v5, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mEventQueueEnd:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    iget-object v5, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mEventQueueEnd:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    if-eqz v5, :cond_4b

    iget-object v5, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mEventQueueEnd:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    iput-object v8, v5, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;->next:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    :cond_4b
    invoke-virtual {v4}, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;->recycle()V

    iget-object v5, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mEventQueueEnd:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    if-nez v5, :cond_7

    iput-object v8, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mEventQueueStart:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    goto :goto_7

    :cond_55
    return-void
.end method

.method private scheduleProcessQueuedEvents()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mEventQueueEnd:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    iget-wide v2, v1, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;->dispatchTime:J

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    move-result v0

    if-nez v0, :cond_16

    const-string/jumbo v0, "KeyboardInterceptor"

    const-string/jumbo v1, "Failed to schedule key event"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    return-void
.end method


# virtual methods
.method public clearEvents(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v0, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->clearEvents(I)V

    :cond_9
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 4

    const/4 v1, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v1, :cond_10

    const-string/jumbo v0, "KeyboardInterceptor"

    const-string/jumbo v1, "Unexpected message type"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_10
    invoke-direct {p0}, Lcom/android/server/accessibility/KeyboardInterceptor;->processQueuedEvents()V

    iget-object v0, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mEventQueueStart:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    if-eqz v0, :cond_1a

    invoke-direct {p0}, Lcom/android/server/accessibility/KeyboardInterceptor;->scheduleProcessQueuedEvents()V

    :cond_1a
    return v1
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v0, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_9
    return-void
.end method

.method public onDestroy()V
    .registers 1

    return-void
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;I)V
    .registers 9

    const-wide/16 v4, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/KeyboardInterceptor;->getEventDelay(Landroid/view/KeyEvent;I)J

    move-result-wide v0

    cmp-long v2, v0, v4

    if-gez v2, :cond_b

    return-void

    :cond_b
    cmp-long v2, v0, v4

    if-gtz v2, :cond_13

    iget-object v2, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mEventQueueStart:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    if-eqz v2, :cond_17

    :cond_13
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/accessibility/KeyboardInterceptor;->addEventToQueue(Landroid/view/KeyEvent;IJ)V

    return-void

    :cond_17
    iget-object v2, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyKeyEvent(Landroid/view/KeyEvent;I)Z

    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    :cond_9
    return-void
.end method

.method public setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    return-void
.end method
