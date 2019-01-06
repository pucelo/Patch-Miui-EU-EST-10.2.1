.class public final Landroid/view/InputEventConsistencyVerifier;
.super Ljava/lang/Object;
.source "InputEventConsistencyVerifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/InputEventConsistencyVerifier$KeyState;
    }
.end annotation


# static fields
.field private static final EVENT_TYPE_GENERIC_MOTION:Ljava/lang/String; = "GenericMotionEvent"

.field private static final EVENT_TYPE_KEY:Ljava/lang/String; = "KeyEvent"

.field private static final EVENT_TYPE_TOUCH:Ljava/lang/String; = "TouchEvent"

.field private static final EVENT_TYPE_TRACKBALL:Ljava/lang/String; = "TrackballEvent"

.field public static final FLAG_RAW_DEVICE_INPUT:I = 0x1

.field private static final IS_ENG_BUILD:Z

.field private static final RECENT_EVENTS_TO_LOG:I = 0x5


# instance fields
.field private mButtonsPressed:I

.field private final mCaller:Ljava/lang/Object;

.field private mCurrentEvent:Landroid/view/InputEvent;

.field private mCurrentEventType:Ljava/lang/String;

.field private final mFlags:I

.field private mHoverEntered:Z

.field private mKeyStateList:Landroid/view/InputEventConsistencyVerifier$KeyState;

.field private mLastEventSeq:I

.field private mLastEventType:Ljava/lang/String;

.field private mLastNestingLevel:I

.field private final mLogTag:Ljava/lang/String;

.field private mMostRecentEventIndex:I

.field private mRecentEvents:[Landroid/view/InputEvent;

.field private mRecentEventsUnhandled:[Z

.field private mTouchEventStreamDeviceId:I

.field private mTouchEventStreamIsTainted:Z

.field private mTouchEventStreamPointers:I

.field private mTouchEventStreamSource:I

.field private mTouchEventStreamUnhandled:Z

.field private mTrackballDown:Z

.field private mTrackballUnhandled:Z

.field private mViolationMessage:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    sput-boolean v0, Landroid/view/InputEventConsistencyVerifier;->IS_ENG_BUILD:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;ILjava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamDeviceId:I

    iput-object p1, p0, Landroid/view/InputEventConsistencyVerifier;->mCaller:Ljava/lang/Object;

    iput p2, p0, Landroid/view/InputEventConsistencyVerifier;->mFlags:I

    if-eqz p3, :cond_f

    :goto_c
    iput-object p3, p0, Landroid/view/InputEventConsistencyVerifier;->mLogTag:Ljava/lang/String;

    return-void

    :cond_f
    const-string/jumbo p3, "InputEventConsistencyVerifier"

    goto :goto_c
.end method

.method private addKeyState(III)V
    .registers 6

    invoke-static {p1, p2, p3}, Landroid/view/InputEventConsistencyVerifier$KeyState;->obtain(III)Landroid/view/InputEventConsistencyVerifier$KeyState;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InputEventConsistencyVerifier;->mKeyStateList:Landroid/view/InputEventConsistencyVerifier$KeyState;

    iput-object v1, v0, Landroid/view/InputEventConsistencyVerifier$KeyState;->next:Landroid/view/InputEventConsistencyVerifier$KeyState;

    iput-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mKeyStateList:Landroid/view/InputEventConsistencyVerifier$KeyState;

    return-void
.end method

.method private static appendEvent(Ljava/lang/StringBuilder;ILandroid/view/InputEvent;Z)V
    .registers 8

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": sent at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/InputEvent;->getEventTimeNano()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, ", "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_20

    const-string/jumbo v0, "(unhandled) "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_20
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private ensureActionButtonIsNonZeroForThisAction(Landroid/view/MotionEvent;)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionButton()I

    move-result v0

    if-nez v0, :cond_25

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No action button set. Action button should always be non-zero for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-static {v2}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    :cond_25
    return-void
.end method

.method private ensureHistorySizeIsZeroForThisAction(Landroid/view/MotionEvent;)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    if-eqz v0, :cond_30

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "History size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " but it should always be 0 for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-static {v2}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    :cond_30
    return-void
.end method

.method private ensureMetaStateIsNormalized(I)V
    .registers 7

    invoke-static {p1}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v0

    if-eq v0, p1, :cond_21

    const-string/jumbo v1, "Metastate not normalized.  Was 0x%08x but expected 0x%08x."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    :cond_21
    return-void
.end method

.method private ensurePointerCountIsOneForThisAction(Landroid/view/MotionEvent;)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_31

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Pointer count is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " but it should always be 1 for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-static {v2}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    :cond_31
    return-void
.end method

.method private findKeyState(IIIZ)Landroid/view/InputEventConsistencyVerifier$KeyState;
    .registers 9

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/view/InputEventConsistencyVerifier;->mKeyStateList:Landroid/view/InputEventConsistencyVerifier$KeyState;

    :goto_4
    if-eqz v1, :cond_26

    iget v2, v1, Landroid/view/InputEventConsistencyVerifier$KeyState;->deviceId:I

    if-ne v2, p1, :cond_22

    iget v2, v1, Landroid/view/InputEventConsistencyVerifier$KeyState;->source:I

    if-ne v2, p2, :cond_22

    iget v2, v1, Landroid/view/InputEventConsistencyVerifier$KeyState;->keyCode:I

    if-ne v2, p3, :cond_22

    if-eqz p4, :cond_1c

    if-eqz v0, :cond_1d

    iget-object v2, v1, Landroid/view/InputEventConsistencyVerifier$KeyState;->next:Landroid/view/InputEventConsistencyVerifier$KeyState;

    iput-object v2, v0, Landroid/view/InputEventConsistencyVerifier$KeyState;->next:Landroid/view/InputEventConsistencyVerifier$KeyState;

    :goto_1a
    iput-object v3, v1, Landroid/view/InputEventConsistencyVerifier$KeyState;->next:Landroid/view/InputEventConsistencyVerifier$KeyState;

    :cond_1c
    return-object v1

    :cond_1d
    iget-object v2, v1, Landroid/view/InputEventConsistencyVerifier$KeyState;->next:Landroid/view/InputEventConsistencyVerifier$KeyState;

    iput-object v2, p0, Landroid/view/InputEventConsistencyVerifier;->mKeyStateList:Landroid/view/InputEventConsistencyVerifier$KeyState;

    goto :goto_1a

    :cond_22
    move-object v0, v1

    iget-object v1, v1, Landroid/view/InputEventConsistencyVerifier$KeyState;->next:Landroid/view/InputEventConsistencyVerifier$KeyState;

    goto :goto_4

    :cond_26
    return-object v3
.end method

.method private finishEvent()V
    .registers 10

    const/4 v8, 0x5

    const/4 v7, 0x0

    const/4 v6, 0x0

    iget-object v3, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    if-eqz v3, :cond_66

    iget-object v3, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_66

    iget-object v3, p0, Landroid/view/InputEventConsistencyVerifier;->mCurrentEvent:Landroid/view/InputEvent;

    invoke-virtual {v3}, Landroid/view/InputEvent;->isTainted()Z

    move-result v3

    if-nez v3, :cond_61

    iget-object v3, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\n  in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/InputEventConsistencyVerifier;->mCaller:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\n  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/view/InputEventConsistencyVerifier;->mCurrentEvent:Landroid/view/InputEvent;

    invoke-static {v3, v7, v4, v7}, Landroid/view/InputEventConsistencyVerifier;->appendEvent(Ljava/lang/StringBuilder;ILandroid/view/InputEvent;Z)V

    iget-object v3, p0, Landroid/view/InputEventConsistencyVerifier;->mRecentEvents:[Landroid/view/InputEvent;

    if-eqz v3, :cond_50

    iget-object v3, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\n  -- recent events --"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_41
    if-ge v1, v8, :cond_50

    iget v3, p0, Landroid/view/InputEventConsistencyVerifier;->mMostRecentEventIndex:I

    add-int/lit8 v3, v3, 0x5

    sub-int/2addr v3, v1

    rem-int/lit8 v2, v3, 0x5

    iget-object v3, p0, Landroid/view/InputEventConsistencyVerifier;->mRecentEvents:[Landroid/view/InputEvent;

    aget-object v0, v3, v2

    if-nez v0, :cond_9a

    :cond_50
    iget-object v3, p0, Landroid/view/InputEventConsistencyVerifier;->mLogTag:Ljava/lang/String;

    iget-object v4, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/view/InputEventConsistencyVerifier;->mCurrentEvent:Landroid/view/InputEvent;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/InputEvent;->setTainted(Z)V

    :cond_61
    iget-object v3, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_66
    iget-object v3, p0, Landroid/view/InputEventConsistencyVerifier;->mRecentEvents:[Landroid/view/InputEvent;

    if-nez v3, :cond_72

    new-array v3, v8, [Landroid/view/InputEvent;

    iput-object v3, p0, Landroid/view/InputEventConsistencyVerifier;->mRecentEvents:[Landroid/view/InputEvent;

    new-array v3, v8, [Z

    iput-object v3, p0, Landroid/view/InputEventConsistencyVerifier;->mRecentEventsUnhandled:[Z

    :cond_72
    iget v3, p0, Landroid/view/InputEventConsistencyVerifier;->mMostRecentEventIndex:I

    add-int/lit8 v3, v3, 0x1

    rem-int/lit8 v2, v3, 0x5

    iput v2, p0, Landroid/view/InputEventConsistencyVerifier;->mMostRecentEventIndex:I

    iget-object v3, p0, Landroid/view/InputEventConsistencyVerifier;->mRecentEvents:[Landroid/view/InputEvent;

    aget-object v3, v3, v2

    if-eqz v3, :cond_87

    iget-object v3, p0, Landroid/view/InputEventConsistencyVerifier;->mRecentEvents:[Landroid/view/InputEvent;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/view/InputEvent;->recycle()V

    :cond_87
    iget-object v3, p0, Landroid/view/InputEventConsistencyVerifier;->mRecentEvents:[Landroid/view/InputEvent;

    iget-object v4, p0, Landroid/view/InputEventConsistencyVerifier;->mCurrentEvent:Landroid/view/InputEvent;

    invoke-virtual {v4}, Landroid/view/InputEvent;->copy()Landroid/view/InputEvent;

    move-result-object v4

    aput-object v4, v3, v2

    iget-object v3, p0, Landroid/view/InputEventConsistencyVerifier;->mRecentEventsUnhandled:[Z

    aput-boolean v7, v3, v2

    iput-object v6, p0, Landroid/view/InputEventConsistencyVerifier;->mCurrentEvent:Landroid/view/InputEvent;

    iput-object v6, p0, Landroid/view/InputEventConsistencyVerifier;->mCurrentEventType:Ljava/lang/String;

    return-void

    :cond_9a
    iget-object v3, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\n  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, Landroid/view/InputEventConsistencyVerifier;->mRecentEventsUnhandled:[Z

    aget-boolean v5, v5, v2

    invoke-static {v3, v4, v0, v5}, Landroid/view/InputEventConsistencyVerifier;->appendEvent(Ljava/lang/StringBuilder;ILandroid/view/InputEvent;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_41
.end method

.method public static isInstrumentationEnabled()Z
    .registers 1

    sget-boolean v0, Landroid/view/InputEventConsistencyVerifier;->IS_ENG_BUILD:Z

    return v0
.end method

.method private problem(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    if-nez v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    :cond_b
    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/InputEventConsistencyVerifier;->mCurrentEventType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_21
    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_27
    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_21
.end method

.method private startEvent(Landroid/view/InputEvent;ILjava/lang/String;)Z
    .registers 7

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/InputEvent;->getSequenceNumber()I

    move-result v0

    iget v1, p0, Landroid/view/InputEventConsistencyVerifier;->mLastEventSeq:I

    if-ne v0, v1, :cond_12

    iget v1, p0, Landroid/view/InputEventConsistencyVerifier;->mLastNestingLevel:I

    if-ge p2, v1, :cond_12

    iget-object v1, p0, Landroid/view/InputEventConsistencyVerifier;->mLastEventType:Ljava/lang/String;

    if-ne p3, v1, :cond_12

    return v2

    :cond_12
    if-lez p2, :cond_20

    iput v0, p0, Landroid/view/InputEventConsistencyVerifier;->mLastEventSeq:I

    iput-object p3, p0, Landroid/view/InputEventConsistencyVerifier;->mLastEventType:Ljava/lang/String;

    iput p2, p0, Landroid/view/InputEventConsistencyVerifier;->mLastNestingLevel:I

    :goto_1a
    iput-object p1, p0, Landroid/view/InputEventConsistencyVerifier;->mCurrentEvent:Landroid/view/InputEvent;

    iput-object p3, p0, Landroid/view/InputEventConsistencyVerifier;->mCurrentEventType:Ljava/lang/String;

    const/4 v1, 0x1

    return v1

    :cond_20
    const/4 v1, -0x1

    iput v1, p0, Landroid/view/InputEventConsistencyVerifier;->mLastEventSeq:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/InputEventConsistencyVerifier;->mLastEventType:Ljava/lang/String;

    iput v2, p0, Landroid/view/InputEventConsistencyVerifier;->mLastNestingLevel:I

    goto :goto_1a
.end method


# virtual methods
.method public onGenericMotionEvent(Landroid/view/MotionEvent;I)V
    .registers 11

    const/16 v7, 0x40

    const/16 v6, 0x20

    const-string/jumbo v4, "GenericMotionEvent"

    invoke-direct {p0, p1, p2, v4}, Landroid/view/InputEventConsistencyVerifier;->startEvent(Landroid/view/InputEvent;ILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_e

    return-void

    :cond_e
    :try_start_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v4

    invoke-direct {p0, v4}, Landroid/view/InputEventConsistencyVerifier;->ensureMetaStateIsNormalized(I)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionButton()I

    move-result v1

    and-int/lit8 v4, v3, 0x2

    if-eqz v4, :cond_13b

    packed-switch v0, :pswitch_data_150

    const-string/jumbo v4, "Invalid action for generic pointer event."

    invoke-direct {p0, v4}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V
    :try_end_32
    .catchall {:try_start_e .. :try_end_32} :catchall_3d

    :cond_32
    :goto_32
    invoke-direct {p0}, Landroid/view/InputEventConsistencyVerifier;->finishEvent()V

    return-void

    :pswitch_36
    :try_start_36
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensurePointerCountIsOneForThisAction(Landroid/view/MotionEvent;)V

    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/view/InputEventConsistencyVerifier;->mHoverEntered:Z
    :try_end_3c
    .catchall {:try_start_36 .. :try_end_3c} :catchall_3d

    goto :goto_32

    :catchall_3d
    move-exception v4

    invoke-direct {p0}, Landroid/view/InputEventConsistencyVerifier;->finishEvent()V

    throw v4

    :pswitch_42
    :try_start_42
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensurePointerCountIsOneForThisAction(Landroid/view/MotionEvent;)V

    goto :goto_32

    :pswitch_46
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensurePointerCountIsOneForThisAction(Landroid/view/MotionEvent;)V

    iget-boolean v4, p0, Landroid/view/InputEventConsistencyVerifier;->mHoverEntered:Z

    if-nez v4, :cond_53

    const-string/jumbo v4, "ACTION_HOVER_EXIT without prior ACTION_HOVER_ENTER"

    invoke-direct {p0, v4}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    :cond_53
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/view/InputEventConsistencyVerifier;->mHoverEntered:Z

    goto :goto_32

    :pswitch_57
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensureHistorySizeIsZeroForThisAction(Landroid/view/MotionEvent;)V

    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensurePointerCountIsOneForThisAction(Landroid/view/MotionEvent;)V

    goto :goto_32

    :pswitch_5e
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensureActionButtonIsNonZeroForThisAction(Landroid/view/MotionEvent;)V

    iget v4, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    and-int/2addr v4, v1

    if-eqz v4, :cond_8b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Action button for ACTION_BUTTON_PRESS event is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", but it has already been pressed and "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "has yet to be released."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    :cond_8b
    iget v4, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    or-int/2addr v4, v1

    iput v4, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    if-ne v1, v6, :cond_bf

    and-int/lit8 v4, v2, 0x2

    if-eqz v4, :cond_bf

    iget v4, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    :cond_9c
    :goto_9c
    iget v4, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    if-eq v4, v2, :cond_32

    const-string/jumbo v4, "Reported button state differs from expected button state based on press and release events. Is 0x%08x but expected 0x%08x."

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    iget v6, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    goto/16 :goto_32

    :cond_bf
    if-ne v1, v7, :cond_9c

    and-int/lit8 v4, v2, 0x4

    if-eqz v4, :cond_9c

    iget v4, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    goto :goto_9c

    :pswitch_cc
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensureActionButtonIsNonZeroForThisAction(Landroid/view/MotionEvent;)V

    iget v4, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    and-int/2addr v4, v1

    if-eq v4, v1, :cond_f9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Action button for ACTION_BUTTON_RELEASE event is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", but it was either never pressed or has "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "already been released."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    :cond_f9
    iget v4, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    not-int v5, v1

    and-int/2addr v4, v5

    iput v4, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    if-ne v1, v6, :cond_12e

    and-int/lit8 v4, v2, 0x2

    if-nez v4, :cond_12e

    iget v4, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    and-int/lit8 v4, v4, -0x3

    iput v4, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    :cond_10b
    :goto_10b
    iget v4, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    if-eq v4, v2, :cond_32

    const-string/jumbo v4, "Reported button state differs from expected button state based on press and release events. Is 0x%08x but expected 0x%08x."

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    iget v6, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    goto/16 :goto_32

    :cond_12e
    if-ne v1, v7, :cond_10b

    and-int/lit8 v4, v2, 0x4

    if-nez v4, :cond_10b

    iget v4, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    and-int/lit8 v4, v4, -0x5

    iput v4, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    goto :goto_10b

    :cond_13b
    and-int/lit8 v4, v3, 0x10

    if-eqz v4, :cond_32

    packed-switch v0, :pswitch_data_160

    const-string/jumbo v4, "Invalid action for generic joystick event."

    invoke-direct {p0, v4}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    goto/16 :goto_32

    :pswitch_14a
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensurePointerCountIsOneForThisAction(Landroid/view/MotionEvent;)V
    :try_end_14d
    .catchall {:try_start_42 .. :try_end_14d} :catchall_3d

    goto/16 :goto_32

    nop

    :pswitch_data_150
    .packed-switch 0x7
        :pswitch_42
        :pswitch_57
        :pswitch_36
        :pswitch_46
        :pswitch_5e
        :pswitch_cc
    .end packed-switch

    :pswitch_data_160
    .packed-switch 0x2
        :pswitch_14a
    .end packed-switch
.end method

.method public onInputEvent(Landroid/view/InputEvent;I)V
    .registers 6

    instance-of v2, p1, Landroid/view/KeyEvent;

    if-eqz v2, :cond_b

    move-object v0, p1

    check-cast v0, Landroid/view/KeyEvent;

    invoke-virtual {p0, v0, p2}, Landroid/view/InputEventConsistencyVerifier;->onKeyEvent(Landroid/view/KeyEvent;I)V

    :goto_a
    return-void

    :cond_b
    move-object v1, p1

    check-cast v1, Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-virtual {p0, v1, p2}, Landroid/view/InputEventConsistencyVerifier;->onTouchEvent(Landroid/view/MotionEvent;I)V

    goto :goto_a

    :cond_18
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_24

    invoke-virtual {p0, v1, p2}, Landroid/view/InputEventConsistencyVerifier;->onTrackballEvent(Landroid/view/MotionEvent;I)V

    goto :goto_a

    :cond_24
    invoke-virtual {p0, v1, p2}, Landroid/view/InputEventConsistencyVerifier;->onGenericMotionEvent(Landroid/view/MotionEvent;I)V

    goto :goto_a
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;I)V
    .registers 10

    const-string/jumbo v5, "KeyEvent"

    invoke-direct {p0, p1, p2, v5}, Landroid/view/InputEventConsistencyVerifier;->startEvent(Landroid/view/InputEvent;ILjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a

    return-void

    :cond_a
    :try_start_a
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v5

    invoke-direct {p0, v5}, Landroid/view/InputEventConsistencyVerifier;->ensureMetaStateIsNormalized(I)V

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    packed-switch v0, :pswitch_data_88

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid action "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Landroid/view/KeyEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " for key event."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V
    :try_end_46
    .catchall {:try_start_a .. :try_end_46} :catchall_59

    :cond_46
    :goto_46
    :pswitch_46
    invoke-direct {p0}, Landroid/view/InputEventConsistencyVerifier;->finishEvent()V

    return-void

    :pswitch_4a
    const/4 v5, 0x0

    :try_start_4b
    invoke-direct {p0, v1, v3, v2, v5}, Landroid/view/InputEventConsistencyVerifier;->findKeyState(IIIZ)Landroid/view/InputEventConsistencyVerifier$KeyState;

    move-result-object v4

    if-eqz v4, :cond_71

    iget-boolean v5, v4, Landroid/view/InputEventConsistencyVerifier$KeyState;->unhandled:Z

    if-eqz v5, :cond_5e

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/view/InputEventConsistencyVerifier$KeyState;->unhandled:Z
    :try_end_58
    .catchall {:try_start_4b .. :try_end_58} :catchall_59

    goto :goto_46

    :catchall_59
    move-exception v5

    invoke-direct {p0}, Landroid/view/InputEventConsistencyVerifier;->finishEvent()V

    throw v5

    :cond_5e
    :try_start_5e
    iget v5, p0, Landroid/view/InputEventConsistencyVerifier;->mFlags:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_46

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-nez v5, :cond_46

    const-string/jumbo v5, "ACTION_DOWN but key is already down and this event is not a key repeat."

    invoke-direct {p0, v5}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    goto :goto_46

    :cond_71
    invoke-direct {p0, v1, v3, v2}, Landroid/view/InputEventConsistencyVerifier;->addKeyState(III)V

    goto :goto_46

    :pswitch_75
    const/4 v5, 0x1

    invoke-direct {p0, v1, v3, v2, v5}, Landroid/view/InputEventConsistencyVerifier;->findKeyState(IIIZ)Landroid/view/InputEventConsistencyVerifier$KeyState;

    move-result-object v4

    if-nez v4, :cond_83

    const-string/jumbo v5, "ACTION_UP but key was not down."

    invoke-direct {p0, v5}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    goto :goto_46

    :cond_83
    invoke-virtual {v4}, Landroid/view/InputEventConsistencyVerifier$KeyState;->recycle()V
    :try_end_86
    .catchall {:try_start_5e .. :try_end_86} :catchall_59

    goto :goto_46

    nop

    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_4a
        :pswitch_75
        :pswitch_46
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;I)V
    .registers 16

    const/4 v12, 0x1

    const/4 v11, 0x0

    const-string/jumbo v10, "TouchEvent"

    invoke-direct {p0, p1, p2, v10}, Landroid/view/InputEventConsistencyVerifier;->startEvent(Landroid/view/InputEvent;ILjava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_c

    return-void

    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_15

    const/4 v10, 0x3

    if-ne v0, v10, :cond_ed

    :cond_15
    const/4 v7, 0x1

    :goto_16
    if-eqz v7, :cond_26

    iget-boolean v10, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamIsTainted:Z

    if-nez v10, :cond_20

    iget-boolean v10, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamUnhandled:Z

    if-eqz v10, :cond_26

    :cond_20
    iput-boolean v11, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamIsTainted:Z

    iput-boolean v11, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamUnhandled:Z

    iput v11, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    :cond_26
    iget-boolean v10, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamIsTainted:Z

    if-eqz v10, :cond_2d

    invoke-virtual {p1, v12}, Landroid/view/MotionEvent;->setTainted(Z)V

    :cond_2d
    :try_start_2d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v10

    invoke-direct {p0, v10}, Landroid/view/InputEventConsistencyVerifier;->ensureMetaStateIsNormalized(I)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v9

    if-nez v7, :cond_8f

    iget v10, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamDeviceId:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_8f

    iget v10, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamDeviceId:I

    if-ne v10, v3, :cond_4b

    iget v10, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamSource:I

    if-eq v10, v9, :cond_8f

    :cond_4b
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Touch event stream contains events from multiple sources: previous device id "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamDeviceId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", previous source "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamSource:I

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", new device id "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", new source "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    :cond_8f
    iput v3, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamDeviceId:I

    iput v9, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamSource:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    and-int/lit8 v10, v9, 0x2

    if-eqz v10, :cond_238

    packed-switch v0, :pswitch_data_240

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    const/4 v10, 0x5

    if-ne v2, v10, :cond_1a8

    iget v10, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    if-nez v10, :cond_b6

    const-string/jumbo v10, "ACTION_POINTER_DOWN but no other pointers were down."

    invoke-direct {p0, v10}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamIsTainted:Z

    :cond_b6
    if-ltz v1, :cond_ba

    if-lt v1, v8, :cond_173

    :cond_ba
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "ACTION_POINTER_DOWN index is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " but the pointer count is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamIsTainted:Z

    :goto_e6
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensureHistorySizeIsZeroForThisAction(Landroid/view/MotionEvent;)V
    :try_end_e9
    .catchall {:try_start_2d .. :try_end_e9} :catchall_110

    :cond_e9
    :goto_e9
    invoke-direct {p0}, Landroid/view/InputEventConsistencyVerifier;->finishEvent()V

    return-void

    :cond_ed
    const/4 v10, 0x4

    if-ne v0, v10, :cond_f3

    const/4 v7, 0x1

    goto/16 :goto_16

    :cond_f3
    const/4 v7, 0x0

    goto/16 :goto_16

    :pswitch_f6
    :try_start_f6
    iget v10, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    if-eqz v10, :cond_100

    const-string/jumbo v10, "ACTION_DOWN but pointers are already down.  Probably missing ACTION_UP from previous gesture."

    invoke-direct {p0, v10}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    :cond_100
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensureHistorySizeIsZeroForThisAction(Landroid/view/MotionEvent;)V

    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensurePointerCountIsOneForThisAction(Landroid/view/MotionEvent;)V

    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    shl-int v10, v12, v10

    iput v10, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I
    :try_end_10f
    .catchall {:try_start_f6 .. :try_end_10f} :catchall_110

    goto :goto_e9

    :catchall_110
    move-exception v10

    invoke-direct {p0}, Landroid/view/InputEventConsistencyVerifier;->finishEvent()V

    throw v10

    :pswitch_115
    :try_start_115
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensureHistorySizeIsZeroForThisAction(Landroid/view/MotionEvent;)V

    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensurePointerCountIsOneForThisAction(Landroid/view/MotionEvent;)V

    const/4 v10, 0x0

    iput v10, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamIsTainted:Z

    goto :goto_e9

    :pswitch_122
    iget v10, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    invoke-static {v10}, Ljava/lang/Integer;->bitCount(I)I

    move-result v4

    if-eq v8, v4, :cond_e9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "ACTION_MOVE contained "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " pointers but there are currently "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " pointers down."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamIsTainted:Z

    goto :goto_e9

    :pswitch_157
    const/4 v10, 0x0

    iput v10, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamIsTainted:Z

    goto :goto_e9

    :pswitch_15e
    iget v10, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    if-eqz v10, :cond_168

    const-string/jumbo v10, "ACTION_OUTSIDE but pointers are still down."

    invoke-direct {p0, v10}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    :cond_168
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensureHistorySizeIsZeroForThisAction(Landroid/view/MotionEvent;)V

    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensurePointerCountIsOneForThisAction(Landroid/view/MotionEvent;)V

    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamIsTainted:Z

    goto/16 :goto_e9

    :cond_173
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    shl-int v6, v12, v5

    iget v10, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    and-int/2addr v10, v6

    if-eqz v10, :cond_1a1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "ACTION_POINTER_DOWN specified pointer id "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " which is already down."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamIsTainted:Z

    goto/16 :goto_e6

    :cond_1a1
    iget v10, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    or-int/2addr v10, v6

    iput v10, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    goto/16 :goto_e6

    :cond_1a8
    const/4 v10, 0x6

    if-ne v2, v10, :cond_214

    if-ltz v1, :cond_1af

    if-lt v1, v8, :cond_1e0

    :cond_1af
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "ACTION_POINTER_UP index is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " but the pointer count is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamIsTainted:Z

    :goto_1db
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensureHistorySizeIsZeroForThisAction(Landroid/view/MotionEvent;)V

    goto/16 :goto_e9

    :cond_1e0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    shl-int v6, v12, v5

    iget v10, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    and-int/2addr v10, v6

    if-nez v10, :cond_20d

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "ACTION_POINTER_UP specified pointer id "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " which is not currently down."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamIsTainted:Z

    goto :goto_1db

    :cond_20d
    iget v10, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    not-int v11, v6

    and-int/2addr v10, v11

    iput v10, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    goto :goto_1db

    :cond_214
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Invalid action "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v0}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " for touch event."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    goto/16 :goto_e9

    :cond_238
    const-string/jumbo v10, "Source was not SOURCE_CLASS_POINTER."

    invoke-direct {p0, v10}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V
    :try_end_23e
    .catchall {:try_start_115 .. :try_end_23e} :catchall_110

    goto/16 :goto_e9

    :pswitch_data_240
    .packed-switch 0x0
        :pswitch_f6
        :pswitch_115
        :pswitch_122
        :pswitch_157
        :pswitch_15e
    .end packed-switch
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;I)V
    .registers 8

    const/4 v4, 0x0

    const-string/jumbo v2, "TrackballEvent"

    invoke-direct {p0, p1, p2, v2}, Landroid/view/InputEventConsistencyVerifier;->startEvent(Landroid/view/InputEvent;ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    return-void

    :cond_b
    :try_start_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/view/InputEventConsistencyVerifier;->ensureMetaStateIsNormalized(I)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_ab

    packed-switch v0, :pswitch_data_b2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " for trackball event."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    :goto_43
    iget-boolean v2, p0, Landroid/view/InputEventConsistencyVerifier;->mTrackballDown:Z

    if-eqz v2, :cond_98

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v2

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_98

    const-string/jumbo v2, "Trackball is down but pressure is not greater than 0."

    invoke-direct {p0, v2}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V
    :try_end_55
    .catchall {:try_start_b .. :try_end_55} :catchall_70

    :cond_55
    :goto_55
    invoke-direct {p0}, Landroid/view/InputEventConsistencyVerifier;->finishEvent()V

    return-void

    :pswitch_59
    :try_start_59
    iget-boolean v2, p0, Landroid/view/InputEventConsistencyVerifier;->mTrackballDown:Z

    if-eqz v2, :cond_75

    iget-boolean v2, p0, Landroid/view/InputEventConsistencyVerifier;->mTrackballUnhandled:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_75

    const-string/jumbo v2, "ACTION_DOWN but trackball is already down."

    invoke-direct {p0, v2}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    :goto_69
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensureHistorySizeIsZeroForThisAction(Landroid/view/MotionEvent;)V

    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensurePointerCountIsOneForThisAction(Landroid/view/MotionEvent;)V
    :try_end_6f
    .catchall {:try_start_59 .. :try_end_6f} :catchall_70

    goto :goto_43

    :catchall_70
    move-exception v2

    invoke-direct {p0}, Landroid/view/InputEventConsistencyVerifier;->finishEvent()V

    throw v2

    :cond_75
    const/4 v2, 0x1

    :try_start_76
    iput-boolean v2, p0, Landroid/view/InputEventConsistencyVerifier;->mTrackballDown:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/view/InputEventConsistencyVerifier;->mTrackballUnhandled:Z

    goto :goto_69

    :pswitch_7c
    iget-boolean v2, p0, Landroid/view/InputEventConsistencyVerifier;->mTrackballDown:Z

    if-nez v2, :cond_8d

    const-string/jumbo v2, "ACTION_UP but trackball is not down."

    invoke-direct {p0, v2}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    :goto_86
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensureHistorySizeIsZeroForThisAction(Landroid/view/MotionEvent;)V

    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensurePointerCountIsOneForThisAction(Landroid/view/MotionEvent;)V

    goto :goto_43

    :cond_8d
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/view/InputEventConsistencyVerifier;->mTrackballDown:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/view/InputEventConsistencyVerifier;->mTrackballUnhandled:Z

    goto :goto_86

    :pswitch_94
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensurePointerCountIsOneForThisAction(Landroid/view/MotionEvent;)V

    goto :goto_43

    :cond_98
    iget-boolean v2, p0, Landroid/view/InputEventConsistencyVerifier;->mTrackballDown:Z

    if-nez v2, :cond_55

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v2

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_55

    const-string/jumbo v2, "Trackball is up but pressure is not equal to 0."

    invoke-direct {p0, v2}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    goto :goto_55

    :cond_ab
    const-string/jumbo v2, "Source was not SOURCE_CLASS_TRACKBALL."

    invoke-direct {p0, v2}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V
    :try_end_b1
    .catchall {:try_start_76 .. :try_end_b1} :catchall_70

    goto :goto_55

    :pswitch_data_b2
    .packed-switch 0x0
        :pswitch_59
        :pswitch_7c
        :pswitch_94
    .end packed-switch
.end method

.method public onUnhandledEvent(Landroid/view/InputEvent;I)V
    .registers 13

    const/4 v9, 0x0

    const/4 v8, 0x1

    iget v6, p0, Landroid/view/InputEventConsistencyVerifier;->mLastNestingLevel:I

    if-eq p2, v6, :cond_7

    return-void

    :cond_7
    iget-object v6, p0, Landroid/view/InputEventConsistencyVerifier;->mRecentEventsUnhandled:[Z

    if-eqz v6, :cond_11

    iget-object v6, p0, Landroid/view/InputEventConsistencyVerifier;->mRecentEventsUnhandled:[Z

    iget v7, p0, Landroid/view/InputEventConsistencyVerifier;->mMostRecentEventIndex:I

    aput-boolean v8, v6, v7

    :cond_11
    instance-of v6, p1, Landroid/view/KeyEvent;

    if-eqz v6, :cond_2d

    move-object v2, p1

    check-cast v2, Landroid/view/KeyEvent;

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getSource()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-direct {p0, v0, v4, v1, v9}, Landroid/view/InputEventConsistencyVerifier;->findKeyState(IIIZ)Landroid/view/InputEventConsistencyVerifier$KeyState;

    move-result-object v5

    if-eqz v5, :cond_2c

    iput-boolean v8, v5, Landroid/view/InputEventConsistencyVerifier$KeyState;->unhandled:Z

    :cond_2c
    :goto_2c
    return-void

    :cond_2d
    move-object v3, p1

    check-cast v3, Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v6

    if-eqz v6, :cond_39

    iput-boolean v8, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamUnhandled:Z

    goto :goto_2c

    :cond_39
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getSource()I

    move-result v6

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_2c

    iget-boolean v6, p0, Landroid/view/InputEventConsistencyVerifier;->mTrackballDown:Z

    if-eqz v6, :cond_2c

    iput-boolean v8, p0, Landroid/view/InputEventConsistencyVerifier;->mTrackballUnhandled:Z

    goto :goto_2c
.end method

.method public reset()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, -0x1

    iput v1, p0, Landroid/view/InputEventConsistencyVerifier;->mLastEventSeq:I

    iput v2, p0, Landroid/view/InputEventConsistencyVerifier;->mLastNestingLevel:I

    iput-boolean v2, p0, Landroid/view/InputEventConsistencyVerifier;->mTrackballDown:Z

    iput-boolean v2, p0, Landroid/view/InputEventConsistencyVerifier;->mTrackballUnhandled:Z

    iput v2, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    iput-boolean v2, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamIsTainted:Z

    iput-boolean v2, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamUnhandled:Z

    iput-boolean v2, p0, Landroid/view/InputEventConsistencyVerifier;->mHoverEntered:Z

    iput v2, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    :goto_14
    iget-object v1, p0, Landroid/view/InputEventConsistencyVerifier;->mKeyStateList:Landroid/view/InputEventConsistencyVerifier$KeyState;

    if-eqz v1, :cond_22

    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mKeyStateList:Landroid/view/InputEventConsistencyVerifier$KeyState;

    iget-object v1, v0, Landroid/view/InputEventConsistencyVerifier$KeyState;->next:Landroid/view/InputEventConsistencyVerifier$KeyState;

    iput-object v1, p0, Landroid/view/InputEventConsistencyVerifier;->mKeyStateList:Landroid/view/InputEventConsistencyVerifier$KeyState;

    invoke-virtual {v0}, Landroid/view/InputEventConsistencyVerifier$KeyState;->recycle()V

    goto :goto_14

    :cond_22
    return-void
.end method
