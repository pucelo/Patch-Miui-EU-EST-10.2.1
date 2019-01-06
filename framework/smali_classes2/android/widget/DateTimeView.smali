.class public Landroid/widget/DateTimeView;
.super Landroid/widget/TextView;
.source "DateTimeView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/DateTimeView$ReceiverInfo;
    }
.end annotation


# static fields
.field private static final SHOW_MONTH_DAY_YEAR:I = 0x1

.field private static final SHOW_TIME:I

.field private static final sReceiverInfo:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/widget/DateTimeView$ReceiverInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mLastDisplay:I

.field mLastFormat:Ljava/text/DateFormat;

.field private mNowText:Ljava/lang/String;

.field private mShowRelativeTime:Z

.field mTime:Ljava/util/Date;

.field mTimeMillis:J

.field private mUpdateTimeMillis:J


# direct methods
.method static synthetic -get0(Landroid/widget/DateTimeView;)J
    .registers 3

    iget-wide v0, p0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    return-wide v0
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/widget/DateTimeView;->sReceiverInfo:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/DateTimeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10

    const/4 v6, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v5, -0x1

    iput v5, p0, Landroid/widget/DateTimeView;->mLastDisplay:I

    sget-object v5, Lcom/android/internal/R$styleable;->DateTimeView:[I

    invoke-virtual {p1, p2, v5, v6, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v3, 0x0

    :goto_12
    if-ge v3, v0, :cond_26

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    packed-switch v2, :pswitch_data_2a

    :goto_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :pswitch_1e
    invoke-virtual {v1, v3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {p0, v4}, Landroid/widget/DateTimeView;->setShowRelativeTime(Z)V

    goto :goto_1b

    :cond_26
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_1e
    .end packed-switch
.end method

.method private computeNextMidnight(Ljava/util/TimeZone;)J
    .registers 6

    const/4 v3, 0x0

    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v0

    invoke-static {p1}, Llibcore/icu/DateUtilsBridge;->icuTimeZone(Ljava/util/TimeZone;)Landroid/icu/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->add(II)V

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v3}, Landroid/icu/util/Calendar;->set(II)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v3}, Landroid/icu/util/Calendar;->set(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v3}, Landroid/icu/util/Calendar;->set(II)V

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v3}, Landroid/icu/util/Calendar;->set(II)V

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    return-wide v2
.end method

.method private static dayDistance(Ljava/util/TimeZone;JJ)I
    .registers 10

    invoke-virtual {p0, p3, p4}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-static {p3, p4, v0, v1}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    invoke-virtual {p0, p1, p2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    invoke-static {p1, p2, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private getTimeFormat()Ljava/text/DateFormat;
    .registers 2

    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static setReceiverHandler(Landroid/os/Handler;)V
    .registers 4

    const/4 v2, 0x0

    sget-object v1, Landroid/widget/DateTimeView;->sReceiverInfo:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/DateTimeView$ReceiverInfo;

    if-nez v0, :cond_15

    new-instance v0, Landroid/widget/DateTimeView$ReceiverInfo;

    invoke-direct {v0, v2}, Landroid/widget/DateTimeView$ReceiverInfo;-><init>(Landroid/widget/DateTimeView$ReceiverInfo;)V

    sget-object v1, Landroid/widget/DateTimeView;->sReceiverInfo:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_15
    invoke-virtual {v0, p0}, Landroid/widget/DateTimeView$ReceiverInfo;->setHandler(Landroid/os/Handler;)V

    return-void
.end method

.method private updateNowText()V
    .registers 3

    iget-boolean v0, p0, Landroid/widget/DateTimeView;->mShowRelativeTime:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10403f8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/DateTimeView;->mNowText:Ljava/lang/String;

    return-void
.end method

.method private updateRelativeTime()V
    .registers 15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v10, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    sub-long v10, v6, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    iget-wide v10, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    cmp-long v10, v6, v10

    if-ltz v10, :cond_2b

    const/4 v1, 0x1

    :goto_13
    const-wide/32 v10, 0xea60

    cmp-long v10, v2, v10

    if-gez v10, :cond_2d

    iget-object v10, p0, Landroid/widget/DateTimeView;->mNowText:Ljava/lang/String;

    invoke-virtual {p0, v10}, Landroid/widget/DateTimeView;->setText(Ljava/lang/CharSequence;)V

    iget-wide v10, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    const-wide/32 v12, 0xea60

    add-long/2addr v10, v12

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    iput-wide v10, p0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    return-void

    :cond_2b
    const/4 v1, 0x0

    goto :goto_13

    :cond_2d
    const-wide/32 v10, 0x36ee80

    cmp-long v10, v2, v10

    if-gez v10, :cond_78

    const-wide/32 v10, 0xea60

    div-long v10, v2, v10

    long-to-int v0, v10

    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    if-eqz v1, :cond_74

    const v10, 0x115000e

    :goto_47
    invoke-virtual {v11, v10, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-wide/32 v4, 0xea60

    :goto_5c
    const-wide/16 v10, -0x1

    cmp-long v10, v4, v10

    if-eqz v10, :cond_70

    if-eqz v1, :cond_131

    iget-wide v10, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    add-int/lit8 v12, v0, 0x1

    int-to-long v12, v12

    mul-long/2addr v12, v4

    add-long/2addr v10, v12

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    iput-wide v10, p0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    :cond_70
    :goto_70
    invoke-virtual {p0, v8}, Landroid/widget/DateTimeView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_74
    const v10, 0x115000f

    goto :goto_47

    :cond_78
    const-wide/32 v10, 0x5265c00

    cmp-long v10, v2, v10

    if-gez v10, :cond_ac

    const-wide/32 v10, 0x36ee80

    div-long v10, v2, v10

    long-to-int v0, v10

    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    if-eqz v1, :cond_a8

    const v10, 0x1150009

    :goto_92
    invoke-virtual {v11, v10, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-wide/32 v4, 0x36ee80

    goto :goto_5c

    :cond_a8
    const v10, 0x115000a

    goto :goto_92

    :cond_ac
    const-wide v10, 0x7528ad000L

    cmp-long v10, v2, v10

    if-gez v10, :cond_ff

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v9

    iget-wide v10, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    invoke-static {v9, v10, v11, v6, v7}, Landroid/widget/DateTimeView;->dayDistance(Ljava/util/TimeZone;JJ)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    const/4 v11, 0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    if-eqz v1, :cond_f6

    const v10, 0x1150004

    :goto_d5
    invoke-virtual {v11, v10, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    if-nez v1, :cond_ec

    const/4 v10, 0x1

    if-eq v0, v10, :cond_fa

    :cond_ec
    invoke-direct {p0, v9}, Landroid/widget/DateTimeView;->computeNextMidnight(Ljava/util/TimeZone;)J

    move-result-wide v10

    iput-wide v10, p0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    const-wide/16 v4, -0x1

    goto/16 :goto_5c

    :cond_f6
    const v10, 0x1150005

    goto :goto_d5

    :cond_fa
    const-wide/32 v4, 0x5265c00

    goto/16 :goto_5c

    :cond_ff
    const-wide v10, 0x7528ad000L

    div-long v10, v2, v10

    long-to-int v0, v10

    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    if-eqz v1, :cond_12d

    const v10, 0x1150013

    :goto_114
    invoke-virtual {v11, v10, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-wide v4, 0x7528ad000L

    goto/16 :goto_5c

    :cond_12d
    const v10, 0x1150014

    goto :goto_114

    :cond_131
    iget-wide v10, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    int-to-long v12, v0

    mul-long/2addr v12, v4

    sub-long/2addr v10, v12

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    iput-wide v10, p0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    goto/16 :goto_70
.end method


# virtual methods
.method clearFormatAndUpdate()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/DateTimeView;->mLastFormat:Ljava/text/DateFormat;

    invoke-virtual {p0}, Landroid/widget/DateTimeView;->update()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 4

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    sget-object v1, Landroid/widget/DateTimeView;->sReceiverInfo:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/DateTimeView$ReceiverInfo;

    if-nez v0, :cond_18

    new-instance v0, Landroid/widget/DateTimeView$ReceiverInfo;

    invoke-direct {v0, v2}, Landroid/widget/DateTimeView$ReceiverInfo;-><init>(Landroid/widget/DateTimeView$ReceiverInfo;)V

    sget-object v1, Landroid/widget/DateTimeView;->sReceiverInfo:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_18
    invoke-virtual {v0, p0}, Landroid/widget/DateTimeView$ReceiverInfo;->addView(Landroid/widget/DateTimeView;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/TextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Landroid/widget/DateTimeView;->updateNowText()V

    invoke-virtual {p0}, Landroid/widget/DateTimeView;->update()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    sget-object v1, Landroid/widget/DateTimeView;->sReceiverInfo:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/DateTimeView$ReceiverInfo;

    if-eqz v0, :cond_10

    invoke-virtual {v0, p0}, Landroid/widget/DateTimeView$ReceiverInfo;->removeView(Landroid/widget/DateTimeView;)V

    :cond_10
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 14

    invoke-super {p0, p1}, Landroid/widget/TextView;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-boolean v8, p0, Landroid/widget/DateTimeView;->mShowRelativeTime:Z

    if-eqz v8, :cond_26

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v8, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    sub-long v8, v4, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    iget-wide v8, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    cmp-long v8, v4, v8

    if-ltz v8, :cond_27

    const/4 v1, 0x1

    :goto_1a
    const-wide/32 v8, 0xea60

    cmp-long v8, v2, v8

    if-gez v8, :cond_29

    iget-object v6, p0, Landroid/widget/DateTimeView;->mNowText:Ljava/lang/String;

    :goto_23
    invoke-virtual {p1, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    :cond_26
    return-void

    :cond_27
    const/4 v1, 0x0

    goto :goto_1a

    :cond_29
    const-wide/32 v8, 0x36ee80

    cmp-long v8, v2, v8

    if-gez v8, :cond_5a

    const-wide/32 v8, 0xea60

    div-long v8, v2, v8

    long-to-int v0, v8

    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    if-eqz v1, :cond_56

    const v8, 0x115000c

    :goto_43
    invoke-virtual {v9, v8, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_23

    :cond_56
    const v8, 0x115000d

    goto :goto_43

    :cond_5a
    const-wide/32 v8, 0x5265c00

    cmp-long v8, v2, v8

    if-gez v8, :cond_8b

    const-wide/32 v8, 0x36ee80

    div-long v8, v2, v8

    long-to-int v0, v8

    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    if-eqz v1, :cond_87

    const v8, 0x1150007

    :goto_74
    invoke-virtual {v9, v8, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_23

    :cond_87
    const v8, 0x1150008

    goto :goto_74

    :cond_8b
    const-wide v8, 0x7528ad000L

    cmp-long v8, v2, v8

    if-gez v8, :cond_cc

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v7

    iget-wide v8, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    invoke-static {v7, v8, v9, v4, v5}, Landroid/widget/DateTimeView;->dayDistance(Ljava/util/TimeZone;JJ)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    const/4 v9, 0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    if-eqz v1, :cond_c8

    const v8, 0x1150002

    :goto_b4
    invoke-virtual {v9, v8, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_23

    :cond_c8
    const v8, 0x1150003

    goto :goto_b4

    :cond_cc
    const-wide v8, 0x7528ad000L

    div-long v8, v2, v8

    long-to-int v0, v8

    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    if-eqz v1, :cond_f5

    const v8, 0x1150011

    :goto_e1
    invoke-virtual {v9, v8, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_23

    :cond_f5
    const v8, 0x1150012

    goto :goto_e1
.end method

.method public setShowRelativeTime(Z)V
    .registers 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-boolean p1, p0, Landroid/widget/DateTimeView;->mShowRelativeTime:Z

    invoke-direct {p0}, Landroid/widget/DateTimeView;->updateNowText()V

    invoke-virtual {p0}, Landroid/widget/DateTimeView;->update()V

    return-void
.end method

.method public setTime(J)V
    .registers 12
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    const/4 v6, 0x0

    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    invoke-virtual {v7, p1, p2}, Landroid/text/format/Time;->set(J)V

    invoke-virtual {v7, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    new-instance v0, Ljava/util/Date;

    iget v1, v7, Landroid/text/format/Time;->year:I

    add-int/lit16 v1, v1, -0x76c

    iget v2, v7, Landroid/text/format/Time;->month:I

    iget v3, v7, Landroid/text/format/Time;->monthDay:I

    iget v4, v7, Landroid/text/format/Time;->hour:I

    iget v5, v7, Landroid/text/format/Time;->minute:I

    invoke-direct/range {v0 .. v6}, Ljava/util/Date;-><init>(IIIIII)V

    iput-object v0, p0, Landroid/widget/DateTimeView;->mTime:Ljava/util/Date;

    invoke-virtual {p0}, Landroid/widget/DateTimeView;->update()V

    return-void
.end method

.method public setVisibility(I)V
    .registers 5
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    const/16 v2, 0x8

    if-eq p1, v2, :cond_14

    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getVisibility()I

    move-result v1

    if-ne v1, v2, :cond_14

    const/4 v0, 0x1

    :goto_b
    invoke-super {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Landroid/widget/DateTimeView;->update()V

    :cond_13
    return-void

    :cond_14
    const/4 v0, 0x0

    goto :goto_b
.end method

.method update()V
    .registers 23

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/DateTimeView;->mTime:Ljava/util/Date;

    if-eqz v15, :cond_10

    invoke-virtual/range {p0 .. p0}, Landroid/widget/DateTimeView;->getVisibility()I

    move-result v15

    const/16 v20, 0x8

    move/from16 v0, v20

    if-ne v15, v0, :cond_11

    :cond_10
    return-void

    :cond_11
    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/widget/DateTimeView;->mShowRelativeTime:Z

    if-eqz v15, :cond_1b

    invoke-direct/range {p0 .. p0}, Landroid/widget/DateTimeView;->updateRelativeTime()V

    return-void

    :cond_1b
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/DateTimeView;->mTime:Ljava/util/Date;

    new-instance v12, Landroid/text/format/Time;

    invoke-direct {v12}, Landroid/text/format/Time;-><init>()V

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/DateTimeView;->mTimeMillis:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v12, v0, v1}, Landroid/text/format/Time;->set(J)V

    const/4 v15, 0x0

    iput v15, v12, Landroid/text/format/Time;->second:I

    iget v15, v12, Landroid/text/format/Time;->hour:I

    add-int/lit8 v15, v15, -0xc

    iput v15, v12, Landroid/text/format/Time;->hour:I

    const/4 v15, 0x0

    invoke-virtual {v12, v15}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v18

    iget v15, v12, Landroid/text/format/Time;->hour:I

    add-int/lit8 v15, v15, 0xc

    iput v15, v12, Landroid/text/format/Time;->hour:I

    const/4 v15, 0x0

    invoke-virtual {v12, v15}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v16

    const/4 v15, 0x0

    iput v15, v12, Landroid/text/format/Time;->hour:I

    const/4 v15, 0x0

    iput v15, v12, Landroid/text/format/Time;->minute:I

    const/4 v15, 0x0

    invoke-virtual {v12, v15}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    iget v15, v12, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v15, v15, 0x1

    iput v15, v12, Landroid/text/format/Time;->monthDay:I

    const/4 v15, 0x0

    invoke-virtual {v12, v15}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v12, v10, v11}, Landroid/text/format/Time;->set(J)V

    const/4 v15, 0x0

    iput v15, v12, Landroid/text/format/Time;->second:I

    const/4 v15, 0x0

    invoke-virtual {v12, v15}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v10

    cmp-long v15, v10, v8

    if-ltz v15, :cond_a0

    cmp-long v15, v10, v6

    if-gez v15, :cond_a0

    :cond_75
    const/4 v4, 0x0

    :goto_76
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/DateTimeView;->mLastDisplay:I

    if-ne v4, v15, :cond_aa

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/DateTimeView;->mLastFormat:Ljava/text/DateFormat;

    if-eqz v15, :cond_aa

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/DateTimeView;->mLastFormat:Ljava/text/DateFormat;

    :goto_86
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/DateTimeView;->mTime:Ljava/util/Date;

    invoke-virtual {v5, v15}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/DateTimeView;->setText(Ljava/lang/CharSequence;)V

    if-nez v4, :cond_dd

    cmp-long v15, v16, v6

    if-lez v15, :cond_da

    :goto_99
    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    :goto_9f
    return-void

    :cond_a0
    cmp-long v15, v10, v18

    if-ltz v15, :cond_a8

    cmp-long v15, v10, v16

    if-ltz v15, :cond_75

    :cond_a8
    const/4 v4, 0x1

    goto :goto_76

    :cond_aa
    packed-switch v4, :pswitch_data_fe

    new-instance v15, Ljava/lang/RuntimeException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "unknown display value: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v15, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v15

    :pswitch_cb
    invoke-direct/range {p0 .. p0}, Landroid/widget/DateTimeView;->getTimeFormat()Ljava/text/DateFormat;

    move-result-object v5

    :goto_cf
    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/widget/DateTimeView;->mLastFormat:Ljava/text/DateFormat;

    goto :goto_86

    :pswitch_d4
    const/4 v15, 0x3

    invoke-static {v15}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v5

    goto :goto_cf

    :cond_da
    move-wide/from16 v16, v6

    goto :goto_99

    :cond_dd
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/DateTimeView;->mTimeMillis:J

    move-wide/from16 v20, v0

    cmp-long v15, v20, v10

    if-gez v15, :cond_f0

    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    goto :goto_9f

    :cond_f0
    cmp-long v15, v18, v8

    if-gez v15, :cond_fb

    :goto_f4
    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    goto :goto_9f

    :cond_fb
    move-wide/from16 v18, v8

    goto :goto_f4

    :pswitch_data_fe
    .packed-switch 0x0
        :pswitch_cb
        :pswitch_d4
    .end packed-switch
.end method
