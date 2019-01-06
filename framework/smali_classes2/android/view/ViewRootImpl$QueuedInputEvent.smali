.class final Landroid/view/ViewRootImpl$QueuedInputEvent;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "QueuedInputEvent"
.end annotation


# static fields
.field public static final FLAG_DEFERRED:I = 0x2

.field public static final FLAG_DELIVER_POST_IME:I = 0x1

.field public static final FLAG_FINISHED:I = 0x4

.field public static final FLAG_FINISHED_HANDLED:I = 0x8

.field public static final FLAG_RESYNTHESIZED:I = 0x10

.field public static final FLAG_UNHANDLED:I = 0x20


# instance fields
.field public mEvent:Landroid/view/InputEvent;

.field public mFlags:I

.field public mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

.field public mReceiver:Landroid/view/InputEventReceiver;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .registers 2

    invoke-direct {p0}, Landroid/view/ViewRootImpl$QueuedInputEvent;-><init>()V

    return-void
.end method

.method private flagToString(Ljava/lang/String;IZLjava/lang/StringBuilder;)Z
    .registers 6

    iget v0, p0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    and-int/2addr v0, p2

    if-eqz v0, :cond_12

    if-eqz p3, :cond_d

    const-string/jumbo v0, "|"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    return v0

    :cond_12
    return p3
.end method


# virtual methods
.method public shouldSendToSynthesizer()Z
    .registers 3

    const/4 v1, 0x0

    iget v0, p0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    return v1
.end method

.method public shouldSkipIme()Z
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_9

    return v0

    :cond_9
    iget-object v2, p0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    instance-of v2, v2, Landroid/view/MotionEvent;

    if-eqz v2, :cond_21

    iget-object v1, p0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v1

    if-nez v1, :cond_20

    iget-object v0, p0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    const/high16 v1, 0x400000

    invoke-virtual {v0, v1}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v0

    :cond_20
    :goto_20
    return v0

    :cond_21
    move v0, v1

    goto :goto_20
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "QueuedInputEvent{flags="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string/jumbo v2, "DELIVER_POST_IME"

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3, v0, v1}, Landroid/view/ViewRootImpl$QueuedInputEvent;->flagToString(Ljava/lang/String;IZLjava/lang/StringBuilder;)Z

    move-result v0

    const-string/jumbo v2, "DEFERRED"

    const/4 v3, 0x2

    invoke-direct {p0, v2, v3, v0, v1}, Landroid/view/ViewRootImpl$QueuedInputEvent;->flagToString(Ljava/lang/String;IZLjava/lang/StringBuilder;)Z

    move-result v0

    const-string/jumbo v2, "FINISHED"

    const/4 v3, 0x4

    invoke-direct {p0, v2, v3, v0, v1}, Landroid/view/ViewRootImpl$QueuedInputEvent;->flagToString(Ljava/lang/String;IZLjava/lang/StringBuilder;)Z

    move-result v0

    const-string/jumbo v2, "FINISHED_HANDLED"

    const/16 v3, 0x8

    invoke-direct {p0, v2, v3, v0, v1}, Landroid/view/ViewRootImpl$QueuedInputEvent;->flagToString(Ljava/lang/String;IZLjava/lang/StringBuilder;)Z

    move-result v0

    const-string/jumbo v2, "RESYNTHESIZED"

    const/16 v3, 0x10

    invoke-direct {p0, v2, v3, v0, v1}, Landroid/view/ViewRootImpl$QueuedInputEvent;->flagToString(Ljava/lang/String;IZLjava/lang/StringBuilder;)Z

    move-result v0

    const-string/jumbo v2, "UNHANDLED"

    const/16 v3, 0x20

    invoke-direct {p0, v2, v3, v0, v1}, Landroid/view/ViewRootImpl$QueuedInputEvent;->flagToString(Ljava/lang/String;IZLjava/lang/StringBuilder;)Z

    move-result v0

    if-nez v0, :cond_44

    const-string/jumbo v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_44
    const-string/jumbo v2, ", hasNextQueuedEvent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    if-eqz v2, :cond_7e

    const-string/jumbo v2, "true"

    :goto_52
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, ", hasInputEventReceiver="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mReceiver:Landroid/view/InputEventReceiver;

    if-eqz v2, :cond_82

    const-string/jumbo v2, "true"

    :goto_63
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, ", mEvent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_7e
    const-string/jumbo v2, "false"

    goto :goto_52

    :cond_82
    const-string/jumbo v2, "false"

    goto :goto_63
.end method
