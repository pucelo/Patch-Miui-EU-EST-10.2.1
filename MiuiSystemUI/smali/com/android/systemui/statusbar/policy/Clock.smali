.class public Lcom/android/systemui/statusbar/policy/Clock;
.super Landroid/widget/TextView;
.source "Clock.java"

# interfaces
.implements Lcom/android/systemui/DemoMode;
.implements Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/Clock$ReceiverInfo;
    }
.end annotation


# static fields
.field private static final sReceiverInfo:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/android/systemui/statusbar/policy/Clock$ReceiverInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCalendar:Lmiui/date/Calendar;

.field private mClockMode:I

.field private mDemoMode:Z

.field public mForceHideAmPm:Z

.field private mShowAmPm:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/policy/Clock;->sReceiverInfo:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/Clock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/Clock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mShowAmPm:Z

    return-void
.end method

.method private showDemoModeClock()V
    .locals 7

    const/4 v6, 0x2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Lmiui/date/Calendar;

    if-nez v3, :cond_0

    new-instance v3, Lmiui/date/Calendar;

    invoke-direct {v3}, Lmiui/date/Calendar;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Lmiui/date/Calendar;

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Lmiui/date/Calendar;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmiui/date/Calendar;->setTimeZone(Ljava/util/TimeZone;)Lmiui/date/Calendar;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Lmiui/date/Calendar;

    const/16 v4, 0x12

    invoke-virtual {v3, v4, v6}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Lmiui/date/Calendar;

    const/16 v4, 0x14

    const/16 v5, 0x24

    invoke-virtual {v3, v4, v5}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockMode:I

    if-ne v3, v6, :cond_2

    const v1, 0x7f1105c7

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Lmiui/date/Calendar;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/Clock;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmiui/date/Calendar;->format(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/Clock;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v3, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockMode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    const v1, 0x7f1105c5

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Lmiui/date/Calendar;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/Clock;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmiui/date/Calendar;->format(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/Clock;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    sget-object v3, Lcom/android/systemui/statusbar/policy/Clock;->sReceiverInfo:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/Clock$ReceiverInfo;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/Clock$ReceiverInfo;->getTimeFormat()I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Lmiui/date/Calendar;

    invoke-virtual {v3}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v4

    or-int/lit8 v3, v0, 0xc

    invoke-static {v4, v5, v3}, Lmiui/date/DateUtils;->formatDateTime(JI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/Clock;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    const-string/jumbo v0, "demo_mode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Clock mDemoMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/Clock;->mDemoMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", command = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mDemoMode:Z

    if-nez v0, :cond_1

    const-string/jumbo v0, "enter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mDemoMode:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/Clock;->showDemoModeClock()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mDemoMode:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "exit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mDemoMode:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->updateClock()V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    sget-object v1, Lcom/android/systemui/statusbar/policy/Clock;->sReceiverInfo:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/Clock$ReceiverInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/policy/Clock$ReceiverInfo;

    invoke-direct {v0, v2}, Lcom/android/systemui/statusbar/policy/Clock$ReceiverInfo;-><init>(Lcom/android/systemui/statusbar/policy/Clock$ReceiverInfo;)V

    sget-object v1, Lcom/android/systemui/statusbar/policy/Clock;->sReceiverInfo:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mContext:Landroid/content/Context;

    const/4 v2, -0x2

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x20

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/Clock$ReceiverInfo;->setTimeFormat(I)V

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/Clock$ReceiverInfo;->addView(Lcom/android/systemui/statusbar/policy/Clock;)V

    return-void

    :cond_1
    const/16 v1, 0x10

    goto :goto_0
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 3

    const v0, 0x7f060189

    invoke-static {}, Lcom/android/systemui/Util;->showCtsSpecifiedColor()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p1, p0, p2}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcherHelper;->inDarkMode(Landroid/graphics/Rect;Landroid/view/View;F)Z

    move-result v2

    if-eqz v2, :cond_0

    const v0, 0x7f060181

    :cond_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/Clock;->setTextColor(I)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p1, p0, p2}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcherHelper;->inDarkMode(Landroid/graphics/Rect;Landroid/view/View;F)Z

    move-result v2

    if-eqz v2, :cond_2

    const v0, 0x7f06018a

    :cond_2
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/Clock;->setTextColor(I)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    sget-object v1, Lcom/android/systemui/statusbar/policy/Clock;->sReceiverInfo:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/Clock$ReceiverInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/Clock$ReceiverInfo;->removeView(Lcom/android/systemui/statusbar/policy/Clock;)V

    :cond_0
    return-void
.end method

.method public setClockMode(I)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockMode:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockMode:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->updateClock()V

    :cond_0
    return-void
.end method

.method public setShowAmPm(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mShowAmPm:Z

    return-void
.end method

.method public update()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->updateClock()V

    return-void
.end method

.method final updateClock()V
    .locals 7

    const/16 v6, 0x10

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/Clock;->mDemoMode:Z

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/Clock;->showDemoModeClock()V

    return-void

    :cond_0
    sget-object v3, Lcom/android/systemui/statusbar/policy/Clock;->sReceiverInfo:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/Clock$ReceiverInfo;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Lmiui/date/Calendar;

    if-nez v3, :cond_1

    new-instance v3, Lmiui/date/Calendar;

    invoke-direct {v3}, Lmiui/date/Calendar;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Lmiui/date/Calendar;

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Lmiui/date/Calendar;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmiui/date/Calendar;->setTimeZone(Ljava/util/TimeZone;)Lmiui/date/Calendar;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Lmiui/date/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    const v1, 0x7f1105c7

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/Clock$ReceiverInfo;->getTimeFormat()I

    move-result v3

    if-ne v3, v6, :cond_2

    const v1, 0x7f1105c8

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Lmiui/date/Calendar;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/Clock;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmiui/date/Calendar;->format(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/Clock;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget v3, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockMode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_7

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Lmiui/date/Calendar;

    if-nez v3, :cond_5

    new-instance v3, Lmiui/date/Calendar;

    invoke-direct {v3}, Lmiui/date/Calendar;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Lmiui/date/Calendar;

    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Lmiui/date/Calendar;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmiui/date/Calendar;->setTimeZone(Ljava/util/TimeZone;)Lmiui/date/Calendar;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Lmiui/date/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    const v1, 0x7f1105c5

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/Clock$ReceiverInfo;->getTimeFormat()I

    move-result v3

    if-ne v3, v6, :cond_6

    const v1, 0x7f1105c6

    :cond_6
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Lmiui/date/Calendar;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/Clock;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmiui/date/Calendar;->format(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/Clock;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_7
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/Clock$ReceiverInfo;->getTimeFormat()I

    move-result v0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/Clock;->mShowAmPm:Z

    if-eqz v3, :cond_8

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/Clock;->mForceHideAmPm:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    or-int/lit8 v3, v0, 0xc

    invoke-static {v4, v5, v3}, Lmiui/date/DateUtils;->formatDateTime(JI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/Clock;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    or-int/lit8 v3, v0, 0xc

    or-int/lit8 v3, v3, 0x40

    invoke-static {v4, v5, v3}, Lmiui/date/DateUtils;->formatDateTime(JI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/Clock;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
