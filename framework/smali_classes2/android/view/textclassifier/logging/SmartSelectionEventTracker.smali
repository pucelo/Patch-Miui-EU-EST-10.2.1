.class public final Landroid/view/textclassifier/logging/SmartSelectionEventTracker;
.super Ljava/lang/Object;
.source "SmartSelectionEventTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;
    }
.end annotation


# static fields
.field private static final DEBUG_LOG_ENABLED:Z = false

.field private static final EDITTEXT:Ljava/lang/String; = "edittext"

.field private static final EDIT_WEBVIEW:Ljava/lang/String; = "edit-webview"

.field private static final EVENT_INDICES:I = 0x462

.field private static final INDEX:I = 0x460

.field private static final LOG_TAG:Ljava/lang/String; = "SmartSelectEventTracker"

.field private static final PREV_EVENT_DELTA:I = 0x45e

.field private static final SESSION_ID:I = 0x45f

.field private static final SMART_INDICES:I = 0x463

.field private static final START_EVENT_DELTA:I = 0x45d

.field private static final TEXTVIEW:Ljava/lang/String; = "textview"

.field private static final UNKNOWN:Ljava/lang/String; = "unknown"

.field private static final VERSION_TAG:I = 0x461

.field private static final WEBVIEW:Ljava/lang/String; = "webview"

.field private static final ZERO:Ljava/lang/String; = "0"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIndex:I

.field private mLastEventTime:J

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mOrigStart:I

.field private final mPrevIndices:[I

.field private mSessionId:Ljava/lang/String;

.field private mSessionStartTime:J

.field private final mSmartIndices:[I

.field private mSmartSelectionTriggered:Z

.field private mVersionTag:Ljava/lang/String;

.field private final mWidgetType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5

    const/4 v1, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-array v0, v1, [I

    iput-object v0, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mSmartIndices:[I

    new-array v0, v1, [I

    iput-object v0, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mPrevIndices:[I

    iput p2, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mWidgetType:I

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mContext:Landroid/content/Context;

    return-void
.end method

.method private static clamp(I)I
    .registers 3

    const/16 v0, 0x7fff

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/16 v1, -0x8000

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private static createSessionId()Ljava/lang/String;
    .registers 1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static debugLog(Landroid/metrics/LogMaker;)V
    .registers 1

    return-void
.end method

.method private endSession()V
    .registers 9

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    iput v2, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mOrigStart:I

    iget-object v0, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mSmartIndices:[I

    iget-object v1, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mSmartIndices:[I

    aput v2, v1, v3

    aput v2, v0, v2

    iget-object v0, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mPrevIndices:[I

    iget-object v1, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mPrevIndices:[I

    aput v2, v1, v3

    aput v2, v0, v2

    iput v2, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mIndex:I

    iput-wide v6, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mSessionStartTime:J

    iput-wide v6, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mLastEventTime:J

    iput-boolean v2, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mSmartSelectionTriggered:Z

    invoke-direct {p0, v4}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->getVersionTag(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mVersionTag:Ljava/lang/String;

    iput-object v4, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mSessionId:Ljava/lang/String;

    return-void
.end method

.method private getEventDelta(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)I
    .registers 5

    invoke-static {p1}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->-get3(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)I

    move-result v0

    iget v1, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mOrigStart:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->clamp(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    invoke-static {p1}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->-get0(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)I

    move-result v1

    iget v2, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mOrigStart:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->clamp(I)I

    move-result v1

    const v2, 0xffff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    return v0
.end method

.method private static getLogSubType(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)I
    .registers 3

    invoke-static {p0}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->-get1(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "other"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v0, 0x2

    return v0

    :cond_f
    const-string/jumbo v1, "email"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v0, 0x3

    return v0

    :cond_1a
    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    const/4 v0, 0x4

    return v0

    :cond_25
    const-string/jumbo v1, "address"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    const/4 v0, 0x5

    return v0

    :cond_30
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    const/4 v0, 0x6

    return v0

    :cond_3b
    const/4 v0, 0x1

    return v0
.end method

.method private static getLogSubTypeString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_1c

    const-string/jumbo v0, ""

    return-object v0

    :pswitch_7
    const-string/jumbo v0, "other"

    return-object v0

    :pswitch_b
    const-string/jumbo v0, "email"

    return-object v0

    :pswitch_f
    const-string/jumbo v0, "phone"

    return-object v0

    :pswitch_13
    const-string/jumbo v0, "address"

    return-object v0

    :pswitch_17
    const-string/jumbo v0, "url"

    return-object v0

    nop

    :pswitch_data_1c
    .packed-switch 0x2
        :pswitch_7
        :pswitch_b
        :pswitch_f
        :pswitch_13
        :pswitch_17
    .end packed-switch
.end method

.method private static getLogType(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)I
    .registers 2

    invoke-static {p0}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->-get2(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)I

    move-result v0

    sparse-switch v0, :sswitch_data_3a

    const/4 v0, 0x0

    return v0

    :sswitch_9
    const/16 v0, 0x454

    return v0

    :sswitch_c
    const/16 v0, 0x455

    return v0

    :sswitch_f
    const/16 v0, 0x456

    return v0

    :sswitch_12
    const/16 v0, 0x457

    return v0

    :sswitch_15
    const/16 v0, 0x458

    return v0

    :sswitch_18
    const/16 v0, 0x459

    return v0

    :sswitch_1b
    const/16 v0, 0x45a

    return v0

    :sswitch_1e
    const/16 v0, 0x45b

    return v0

    :sswitch_21
    const/16 v0, 0x45c

    return v0

    :sswitch_24
    const/16 v0, 0x44f

    return v0

    :sswitch_27
    const/16 v0, 0x450

    return v0

    :sswitch_2a
    const/16 v0, 0x44d

    return v0

    :sswitch_2d
    const/16 v0, 0x44e

    return v0

    :sswitch_30
    const/16 v0, 0x451

    return v0

    :sswitch_33
    const/16 v0, 0x452

    return v0

    :sswitch_36
    const/16 v0, 0x453

    return v0

    nop

    :sswitch_data_3a
    .sparse-switch
        0x1 -> :sswitch_2a
        0x2 -> :sswitch_2d
        0x3 -> :sswitch_30
        0x4 -> :sswitch_33
        0x5 -> :sswitch_36
        0x64 -> :sswitch_9
        0x65 -> :sswitch_c
        0x66 -> :sswitch_f
        0x67 -> :sswitch_12
        0x68 -> :sswitch_15
        0x69 -> :sswitch_18
        0x6a -> :sswitch_1b
        0x6b -> :sswitch_1e
        0x6c -> :sswitch_21
        0xc8 -> :sswitch_24
        0xc9 -> :sswitch_27
    .end sparse-switch
.end method

.method private static getLogTypeString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_48

    const-string/jumbo v0, "unknown"

    return-object v0

    :pswitch_7
    const-string/jumbo v0, "OVERTYPE"

    return-object v0

    :pswitch_b
    const-string/jumbo v0, "COPY"

    return-object v0

    :pswitch_f
    const-string/jumbo v0, "PASTE"

    return-object v0

    :pswitch_13
    const-string/jumbo v0, "CUT"

    return-object v0

    :pswitch_17
    const-string/jumbo v0, "SHARE"

    return-object v0

    :pswitch_1b
    const-string/jumbo v0, "SMART_SHARE"

    return-object v0

    :pswitch_1f
    const-string/jumbo v0, "DRAG"

    return-object v0

    :pswitch_23
    const-string/jumbo v0, "ABANDON"

    return-object v0

    :pswitch_27
    const-string/jumbo v0, "OTHER"

    return-object v0

    :pswitch_2b
    const-string/jumbo v0, "SELECT_ALL"

    return-object v0

    :pswitch_2f
    const-string/jumbo v0, "RESET"

    return-object v0

    :pswitch_33
    const-string/jumbo v0, "SELECTION_STARTED"

    return-object v0

    :pswitch_37
    const-string/jumbo v0, "SELECTION_MODIFIED"

    return-object v0

    :pswitch_3b
    const-string/jumbo v0, "SMART_SELECTION_SINGLE"

    return-object v0

    :pswitch_3f
    const-string/jumbo v0, "SMART_SELECTION_MULTI"

    return-object v0

    :pswitch_43
    const-string/jumbo v0, "AUTO_SELECTION"

    return-object v0

    nop

    :pswitch_data_48
    .packed-switch 0x44d
        :pswitch_33
        :pswitch_37
        :pswitch_2b
        :pswitch_2f
        :pswitch_3b
        :pswitch_3f
        :pswitch_43
        :pswitch_7
        :pswitch_b
        :pswitch_f
        :pswitch_13
        :pswitch_17
        :pswitch_1b
        :pswitch_1f
        :pswitch_23
        :pswitch_27
    .end packed-switch
.end method

.method private getSmartDelta()I
    .registers 4

    const/4 v1, 0x0

    iget-boolean v0, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mSmartSelectionTriggered:Z

    if-eqz v0, :cond_24

    iget-object v0, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mSmartIndices:[I

    aget v0, v0, v1

    iget v1, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mOrigStart:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->clamp(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    iget-object v1, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mSmartIndices:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    iget v2, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mOrigStart:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->clamp(I)I

    move-result v1

    const v2, 0xffff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    return v0

    :cond_24
    return v1
.end method

.method private getVersionTag(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)Ljava/lang/String;
    .registers 7

    iget v2, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mWidgetType:I

    packed-switch v2, :pswitch_data_3a

    const-string/jumbo v1, "unknown"

    :goto_8
    if-nez p1, :cond_2e

    const-string/jumbo v0, ""

    :goto_d
    const-string/jumbo v2, "%s/%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :pswitch_1e
    const-string/jumbo v1, "textview"

    goto :goto_8

    :pswitch_22
    const-string/jumbo v1, "webview"

    goto :goto_8

    :pswitch_26
    const-string/jumbo v1, "edittext"

    goto :goto_8

    :pswitch_2a
    const-string/jumbo v1, "edit-webview"

    goto :goto_8

    :cond_2e
    invoke-static {p1}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->-get4(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-static {v2, v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_22
        :pswitch_26
        :pswitch_2a
    .end packed-switch
.end method

.method private startNewSession()Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->endSession()V

    invoke-static {}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->createSessionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mSessionId:Ljava/lang/String;

    iget-object v0, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mSessionId:Ljava/lang/String;

    return-object v0
.end method

.method private writeEvent(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;J)V
    .registers 12

    iget-wide v4, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mLastEventTime:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_a2

    const-wide/16 v2, 0x0

    :goto_a
    new-instance v1, Landroid/metrics/LogMaker;

    const/16 v4, 0x44c

    invoke-direct {v1, v4}, Landroid/metrics/LogMaker;-><init>(I)V

    invoke-static {p1}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->getLogType(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v1

    invoke-static {p1}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->getLogSubType(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v1

    iget-object v4, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Landroid/metrics/LogMaker;->setTimestamp(J)Landroid/metrics/LogMaker;

    move-result-object v1

    iget-wide v4, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mSessionStartTime:J

    sub-long v4, p2, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/16 v5, 0x45d

    invoke-virtual {v1, v5, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/16 v5, 0x45e

    invoke-virtual {v1, v5, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v1

    iget v4, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x460

    invoke-virtual {v1, v5, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v1

    iget-object v4, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mVersionTag:Ljava/lang/String;

    const/16 v5, 0x461

    invoke-virtual {v1, v5, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v1

    invoke-direct {p0}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->getSmartDelta()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x463

    invoke-virtual {v1, v5, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->getEventDelta(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x462

    invoke-virtual {v1, v5, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v1

    iget-object v4, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mSessionId:Ljava/lang/String;

    const/16 v5, 0x45f

    invoke-virtual {v1, v5, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    iget-object v1, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v1, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    invoke-static {v0}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->debugLog(Landroid/metrics/LogMaker;)V

    iput-wide p2, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mLastEventTime:J

    iget-object v1, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mPrevIndices:[I

    invoke-static {p1}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->-get3(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)I

    move-result v4

    const/4 v5, 0x0

    aput v4, v1, v5

    iget-object v1, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mPrevIndices:[I

    invoke-static {p1}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->-get0(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)I

    move-result v4

    const/4 v5, 0x1

    aput v4, v1, v5

    iget v1, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mIndex:I

    return-void

    :cond_a2
    iget-wide v4, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mLastEventTime:J

    sub-long v2, p2, v4

    goto/16 :goto_a
.end method


# virtual methods
.method public logEvent(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)V
    .registers 8

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->-get2(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)I

    move-result v4

    if-eq v4, v2, :cond_d

    iget-object v4, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mSessionId:Ljava/lang/String;

    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->-get2(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)I

    move-result v4

    packed-switch v4, :pswitch_data_74

    :cond_18
    :goto_18
    invoke-direct {p0, p1, v0, v1}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->writeEvent(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;J)V

    invoke-static {p1}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->-wrap0(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-direct {p0}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->endSession()V

    :cond_24
    return-void

    :pswitch_25
    invoke-direct {p0}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->startNewSession()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mSessionId:Ljava/lang/String;

    invoke-static {p1}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->-get0(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)I

    move-result v4

    invoke-static {p1}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->-get3(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    if-ne v4, v5, :cond_43

    :goto_37
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    invoke-static {p1}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->-get3(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)I

    move-result v2

    iput v2, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mOrigStart:I

    iput-wide v0, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mSessionStartTime:J

    goto :goto_18

    :cond_43
    move v2, v3

    goto :goto_37

    :pswitch_45
    iput-boolean v2, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mSmartSelectionTriggered:Z

    invoke-direct {p0, p1}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->getVersionTag(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mVersionTag:Ljava/lang/String;

    iget-object v4, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mSmartIndices:[I

    invoke-static {p1}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->-get3(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)I

    move-result v5

    aput v5, v4, v3

    iget-object v3, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mSmartIndices:[I

    invoke-static {p1}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->-get0(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)I

    move-result v4

    aput v4, v3, v2

    goto :goto_18

    :pswitch_5e
    iget-object v4, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mPrevIndices:[I

    aget v3, v4, v3

    invoke-static {p1}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->-get3(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)I

    move-result v4

    if-ne v3, v4, :cond_18

    iget-object v3, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mPrevIndices:[I

    aget v2, v3, v2

    invoke-static {p1}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->-get0(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)I

    move-result v3

    if-ne v2, v3, :cond_18

    return-void

    nop

    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_25
        :pswitch_5e
        :pswitch_45
        :pswitch_45
        :pswitch_5e
    .end packed-switch
.end method
