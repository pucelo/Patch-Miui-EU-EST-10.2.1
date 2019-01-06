.class public Lcom/android/keyguard/smartcover/Clock;
.super Landroid/widget/TextView;
.source "Clock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/smartcover/Clock$ReceiverInfo;
    }
.end annotation


# static fields
.field private static sCalendar:Ljava/util/Calendar;

.field private static final sReceiverInfo:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/android/keyguard/smartcover/Clock$ReceiverInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mShowDate:Z

.field private mShowHour:Z

.field private mShowMinute:Z


# direct methods
.method static synthetic -set0(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0

    sput-object p0, Lcom/android/keyguard/smartcover/Clock;->sCalendar:Ljava/util/Calendar;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/android/keyguard/smartcover/Clock;->sReceiverInfo:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/smartcover/Clock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/smartcover/Clock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v0, Lcom/android/keyguard/smartcover/Clock;->sCalendar:Ljava/util/Calendar;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/smartcover/Clock;->sCalendar:Ljava/util/Calendar;

    :cond_0
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    sget-object v1, Lcom/android/keyguard/smartcover/Clock;->sReceiverInfo:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/smartcover/Clock$ReceiverInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/keyguard/smartcover/Clock$ReceiverInfo;

    invoke-direct {v0, v2}, Lcom/android/keyguard/smartcover/Clock$ReceiverInfo;-><init>(Lcom/android/keyguard/smartcover/Clock$ReceiverInfo;)V

    sget-object v1, Lcom/android/keyguard/smartcover/Clock;->sReceiverInfo:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {v0, p0}, Lcom/android/keyguard/smartcover/Clock$ReceiverInfo;->addView(Lcom/android/keyguard/smartcover/Clock;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    sget-object v1, Lcom/android/keyguard/smartcover/Clock;->sReceiverInfo:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/smartcover/Clock$ReceiverInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/keyguard/smartcover/Clock$ReceiverInfo;->removeView(Lcom/android/keyguard/smartcover/Clock;)V

    :cond_0
    return-void
.end method

.method public setShowDate(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/smartcover/Clock;->mShowDate:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/keyguard/smartcover/Clock;->mShowDate:Z

    invoke-virtual {p0}, Lcom/android/keyguard/smartcover/Clock;->updateClock()V

    :cond_0
    return-void
.end method

.method public setShowHour(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/smartcover/Clock;->mShowHour:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/keyguard/smartcover/Clock;->mShowHour:Z

    invoke-virtual {p0}, Lcom/android/keyguard/smartcover/Clock;->updateClock()V

    :cond_0
    return-void
.end method

.method public setShowMinute(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/smartcover/Clock;->mShowMinute:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/keyguard/smartcover/Clock;->mShowMinute:Z

    invoke-virtual {p0}, Lcom/android/keyguard/smartcover/Clock;->updateClock()V

    :cond_0
    return-void
.end method

.method final updateClock()V
    .locals 12

    const/16 v11, 0xc

    const/4 v10, 0x0

    sget-object v6, Lcom/android/keyguard/smartcover/Clock;->sCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v6, p0, Lcom/android/keyguard/smartcover/Clock;->mContext:Landroid/content/Context;

    const/4 v7, -0x2

    invoke-static {v6, v7}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v4

    iget-boolean v6, p0, Lcom/android/keyguard/smartcover/Clock;->mShowDate:Z

    if-eqz v6, :cond_1

    if-eqz v4, :cond_0

    const v1, 0x7f1103b9

    :goto_0
    iget-object v6, p0, Lcom/android/keyguard/smartcover/Clock;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/android/keyguard/smartcover/Clock;->sCalendar:Ljava/util/Calendar;

    invoke-static {v6, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/smartcover/Clock;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    :cond_0
    const v1, 0x7f1103ba

    goto :goto_0

    :cond_1
    iget-boolean v6, p0, Lcom/android/keyguard/smartcover/Clock;->mShowHour:Z

    if-eqz v6, :cond_4

    sget-object v6, Lcom/android/keyguard/smartcover/Clock;->sCalendar:Ljava/util/Calendar;

    const/16 v7, 0xb

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-nez v4, :cond_2

    if-le v3, v11, :cond_2

    add-int/lit8 v3, v3, -0xc

    :cond_2
    if-nez v4, :cond_3

    if-nez v3, :cond_3

    const/16 v3, 0xc

    :cond_3
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/keyguard/smartcover/Clock;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    iget-boolean v6, p0, Lcom/android/keyguard/smartcover/Clock;->mShowMinute:Z

    if-eqz v6, :cond_5

    sget-object v6, Lcom/android/keyguard/smartcover/Clock;->sCalendar:Ljava/util/Calendar;

    invoke-virtual {v6, v11}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const-string/jumbo v6, "%02d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/keyguard/smartcover/Clock;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    if-eqz v4, :cond_6

    const/16 v2, 0x20

    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    or-int/lit8 v8, v2, 0xc

    or-int/lit8 v8, v8, 0x40

    invoke-static {v6, v7, v8}, Lmiui/date/DateUtils;->formatDateTime(JI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/keyguard/smartcover/Clock;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_6
    const/16 v2, 0x10

    goto :goto_2
.end method
