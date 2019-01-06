.class public Landroid/os/statistics/InputEventSuperviser;
.super Ljava/lang/Object;
.source "InputEventSuperviser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/statistics/InputEventSuperviser$InputEventFields;,
        Landroid/os/statistics/InputEventSuperviser$SingleInputEvent;
    }
.end annotation


# static fields
.field private static final DEBUGGING:Z = false

.field public static final INPUT_EVENT_STAGE_DELIVERY:I = 0x1

.field public static final INPUT_EVENT_STAGE_DISPATCH:I = 0x0

.field public static final INPUT_EVENT_TYPE_KEY:I = 0x0

.field public static final INPUT_EVENT_TYPE_MOTION:I = 0x1

.field public static final INPUT_EVENT_TYPE_UNKNOWN:I = -0x1

.field private static final TAG:Ljava/lang/String; = "InputEventSuperviser"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static beginInputEvent(Landroid/view/InputEvent;)V
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/statistics/InputEventSuperviser;->beginInputEvent(Landroid/view/InputEvent;I)V

    return-void
.end method

.method public static beginInputEvent(Landroid/view/InputEvent;I)V
    .registers 5

    invoke-static {}, Landroid/os/statistics/PerfSupervisionSettings;->isSupervisionOn()Z

    move-result v2

    if-nez v2, :cond_7

    return-void

    :cond_7
    instance-of v2, p0, Landroid/view/KeyEvent;

    if-nez v2, :cond_12

    instance-of v2, p0, Landroid/view/MotionEvent;

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_12

    return-void

    :cond_12
    const-wide/16 v0, 0x0

    invoke-virtual {p0}, Landroid/view/InputEvent;->getSequenceNumber()I

    move-result v2

    invoke-static {p1, v2}, Landroid/os/statistics/InputEventSuperviser;->nativeBeginInputEvent(II)V

    return-void
.end method

.method public static endInputEvent(Landroid/view/InputEvent;ILandroid/view/InputEventReceiver;Landroid/view/InputChannel;)V
    .registers 16

    invoke-static {}, Landroid/os/statistics/PerfSupervisionSettings;->isSupervisionOn()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    instance-of v0, p0, Landroid/view/KeyEvent;

    if-nez v0, :cond_12

    instance-of v0, p0, Landroid/view/MotionEvent;

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_12

    return-void

    :cond_12
    const-wide/16 v10, 0x0

    invoke-virtual {p0}, Landroid/view/InputEvent;->getSequenceNumber()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/InputEvent;->getEventTime()J

    move-result-wide v2

    instance-of v0, p0, Landroid/view/KeyEvent;

    if-eqz v0, :cond_35

    const/4 v4, 0x0

    move-object v0, p0

    check-cast v0, Landroid/view/KeyEvent;

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    check-cast p0, Landroid/view/KeyEvent;

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    :goto_2e
    move v0, p1

    move-object v7, p2

    move-object v8, p3

    invoke-static/range {v0 .. v8}, Landroid/os/statistics/InputEventSuperviser;->nativeEndInputEvent(IIJIIILandroid/view/InputEventReceiver;Landroid/view/InputChannel;)V

    return-void

    :cond_35
    const/4 v4, 0x1

    check-cast p0, Landroid/view/MotionEvent;

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/4 v6, 0x0

    goto :goto_2e
.end method

.method public static endInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;Landroid/view/InputChannel;)V
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Landroid/os/statistics/InputEventSuperviser;->endInputEvent(Landroid/view/InputEvent;ILandroid/view/InputEventReceiver;Landroid/view/InputChannel;)V

    return-void
.end method

.method private static native nativeBeginInputEvent(II)V
.end method

.method private static native nativeEndInputEvent(IIJIIILandroid/view/InputEventReceiver;Landroid/view/InputChannel;)V
.end method
