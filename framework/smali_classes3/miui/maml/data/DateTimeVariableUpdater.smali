.class public Lmiui/maml/data/DateTimeVariableUpdater;
.super Lmiui/maml/data/NotifierVariableUpdater;
.source "DateTimeVariableUpdater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/data/DateTimeVariableUpdater$1;,
        Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;
    }
.end annotation


# static fields
.field private static final synthetic -miui-maml-data-DateTimeVariableUpdater$AccuracySwitchesValues:[I = null

.field private static final LOG_TAG:Ljava/lang/String; = "DateTimeVariableUpdater"

.field private static final TIME_DAY:I = 0x5265c00

.field private static final TIME_HOUR:I = 0x36ee80

.field private static final TIME_MINUTE:I = 0xea60

.field private static final TIME_SECOND:I = 0x3e8

.field public static final USE_TAG:Ljava/lang/String; = "DateTime"

.field private static final fields:[I

.field private static sCalendar:Lmiui/date/Calendar;


# instance fields
.field private mAmPm:Lmiui/maml/data/IndexedVariable;

.field protected mCalendar:Lmiui/date/Calendar;

.field private mCurrentTime:J

.field private mDate:Lmiui/maml/data/IndexedVariable;

.field private mDateLunar:Lmiui/maml/data/IndexedVariable;

.field private mDayOfWeek:Lmiui/maml/data/IndexedVariable;

.field private mHour12:Lmiui/maml/data/IndexedVariable;

.field private mHour24:Lmiui/maml/data/IndexedVariable;

.field private mLastUpdatedTime:J

.field private mMinute:Lmiui/maml/data/IndexedVariable;

.field private mMonth:Lmiui/maml/data/IndexedVariable;

.field private mMonth1:Lmiui/maml/data/IndexedVariable;

.field private mMonthLunar:Lmiui/maml/data/IndexedVariable;

.field private mMonthLunarLeap:Lmiui/maml/data/IndexedVariable;

.field private mNextAlarm:Lmiui/maml/data/IndexedVariable;

.field private mNextUpdateTime:J

.field private mSecond:Lmiui/maml/data/IndexedVariable;

.field private mTime:Lmiui/maml/data/IndexedVariable;

.field private mTimeAccuracy:J

.field private mTimeAccuracyField:I

.field private mTimeFormat:I

.field private mTimeFormatVar:Lmiui/maml/data/IndexedVariable;

.field private mTimeSys:Lmiui/maml/data/IndexedVariable;

.field private final mTimeUpdater:Ljava/lang/Runnable;

.field private mYear:Lmiui/maml/data/IndexedVariable;

.field private mYearLunar:Lmiui/maml/data/IndexedVariable;

.field private mYearLunar1864:Lmiui/maml/data/IndexedVariable;


# direct methods
.method private static synthetic -getmiui-maml-data-DateTimeVariableUpdater$AccuracySwitchesValues()[I
    .registers 3

    sget-object v0, Lmiui/maml/data/DateTimeVariableUpdater;->-miui-maml-data-DateTimeVariableUpdater$AccuracySwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lmiui/maml/data/DateTimeVariableUpdater;->-miui-maml-data-DateTimeVariableUpdater$AccuracySwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;->values()[Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;->Day:Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;

    invoke-virtual {v1}, Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_3b

    :goto_17
    :try_start_17
    sget-object v1, Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;->Hour:Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;

    invoke-virtual {v1}, Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_39

    :goto_20
    :try_start_20
    sget-object v1, Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;->Minute:Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;

    invoke-virtual {v1}, Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_37

    :goto_29
    :try_start_29
    sget-object v1, Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;->Second:Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;

    invoke-virtual {v1}, Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_32} :catch_35

    :goto_32
    sput-object v0, Lmiui/maml/data/DateTimeVariableUpdater;->-miui-maml-data-DateTimeVariableUpdater$AccuracySwitchesValues:[I

    return-object v0

    :catch_35
    move-exception v1

    goto :goto_32

    :catch_37
    move-exception v1

    goto :goto_29

    :catch_39
    move-exception v1

    goto :goto_20

    :catch_3b
    move-exception v1

    goto :goto_17
.end method

.method static synthetic -wrap0(Lmiui/maml/data/DateTimeVariableUpdater;)V
    .registers 1

    invoke-direct {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->checkUpdateTime()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 5

    const/16 v0, 0x16

    const/16 v1, 0x15

    const/16 v2, 0x14

    const/16 v3, 0x12

    const/16 v4, 0x9

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lmiui/maml/data/DateTimeVariableUpdater;->fields:[I

    return-void
.end method

.method public constructor <init>(Lmiui/maml/data/VariableUpdaterManager;)V
    .registers 3

    sget-object v0, Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;->Minute:Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;

    invoke-direct {p0, p1, v0}, Lmiui/maml/data/DateTimeVariableUpdater;-><init>(Lmiui/maml/data/VariableUpdaterManager;Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;)V

    return-void
.end method

.method public constructor <init>(Lmiui/maml/data/VariableUpdaterManager;Ljava/lang/String;)V
    .registers 9

    sget-object v2, Lmiui/maml/NotifierManager;->TYPE_TIME_CHANGED:Ljava/lang/String;

    invoke-direct {p0, p1, v2}, Lmiui/maml/data/NotifierVariableUpdater;-><init>(Lmiui/maml/data/VariableUpdaterManager;Ljava/lang/String;)V

    new-instance v2, Lmiui/date/Calendar;

    invoke-direct {v2}, Lmiui/date/Calendar;-><init>()V

    iput-object v2, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiui/date/Calendar;

    const/4 v2, -0x1

    iput v2, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeFormat:I

    new-instance v2, Lmiui/maml/data/DateTimeVariableUpdater$1;

    invoke-direct {v2, p0}, Lmiui/maml/data/DateTimeVariableUpdater$1;-><init>(Lmiui/maml/data/DateTimeVariableUpdater;)V

    iput-object v2, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeUpdater:Ljava/lang/Runnable;

    const/4 v1, 0x0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_35

    invoke-static {}, Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;->values()[Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;

    move-result-object v3

    const/4 v2, 0x0

    array-length v4, v3

    :goto_23
    if-ge v2, v4, :cond_35

    aget-object v0, v3, v2

    invoke-virtual {v0}, Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_32

    move-object v1, v0

    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    :cond_35
    if-nez v1, :cond_53

    sget-object v1, Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;->Minute:Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;

    const-string/jumbo v2, "DateTimeVariableUpdater"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "invalid accuracy tag:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_53
    invoke-direct {p0, v1}, Lmiui/maml/data/DateTimeVariableUpdater;->initInner(Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;)V

    return-void
.end method

.method public constructor <init>(Lmiui/maml/data/VariableUpdaterManager;Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;)V
    .registers 4

    sget-object v0, Lmiui/maml/NotifierManager;->TYPE_TIME_CHANGED:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lmiui/maml/data/NotifierVariableUpdater;-><init>(Lmiui/maml/data/VariableUpdaterManager;Ljava/lang/String;)V

    new-instance v0, Lmiui/date/Calendar;

    invoke-direct {v0}, Lmiui/date/Calendar;-><init>()V

    iput-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiui/date/Calendar;

    const/4 v0, -0x1

    iput v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeFormat:I

    new-instance v0, Lmiui/maml/data/DateTimeVariableUpdater$1;

    invoke-direct {v0, p0}, Lmiui/maml/data/DateTimeVariableUpdater$1;-><init>(Lmiui/maml/data/DateTimeVariableUpdater;)V

    iput-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeUpdater:Ljava/lang/Runnable;

    invoke-direct {p0, p2}, Lmiui/maml/data/DateTimeVariableUpdater;->initInner(Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;)V

    return-void
.end method

.method private checkUpdateTime()V
    .registers 12

    const/4 v7, 0x0

    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v6

    invoke-virtual {v6}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v6

    iget-object v8, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeUpdater:Ljava/lang/Runnable;

    invoke-virtual {v6, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v6, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiui/date/Calendar;

    invoke-virtual {v6, v2, v3}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    sget-object v8, Lmiui/maml/data/DateTimeVariableUpdater;->fields:[I

    array-length v9, v8

    move v6, v7

    :goto_1b
    if-ge v6, v9, :cond_23

    aget v4, v8, v6

    iget v10, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeAccuracyField:I

    if-ne v4, v10, :cond_6b

    :cond_23
    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v6

    iget-object v6, v6, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_73

    const/4 v5, 0x1

    :goto_30
    iget-object v6, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiui/date/Calendar;

    invoke-virtual {v6}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iget-wide v6, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCurrentTime:J

    cmp-long v6, v6, v0

    if-nez v6, :cond_40

    iget v6, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeFormat:I

    if-eq v6, v5, :cond_5a

    :cond_40
    iput-wide v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCurrentTime:J

    iget-wide v6, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCurrentTime:J

    iget-wide v8, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeAccuracy:J

    add-long/2addr v6, v8

    iput-wide v6, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mNextUpdateTime:J

    iput v5, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeFormat:I

    iget-object v6, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeFormatVar:Lmiui/maml/data/IndexedVariable;

    iget v7, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeFormat:I

    int-to-double v8, v7

    invoke-virtual {v6, v8, v9}, Lmiui/maml/data/IndexedVariable;->set(D)V

    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v6

    invoke-virtual {v6}, Lmiui/maml/ScreenElementRoot;->requestUpdate()V

    :cond_5a
    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v6

    invoke-virtual {v6}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeUpdater:Ljava/lang/Runnable;

    iget-wide v8, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mNextUpdateTime:J

    sub-long/2addr v8, v2

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_6b
    iget-object v10, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiui/date/Calendar;

    invoke-virtual {v10, v4, v7}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1b

    :cond_73
    const/4 v5, 0x0

    goto :goto_30
.end method

.method public static formatDate(Ljava/lang/CharSequence;J)Ljava/lang/String;
    .registers 4

    sget-object v0, Lmiui/maml/data/DateTimeVariableUpdater;->sCalendar:Lmiui/date/Calendar;

    if-nez v0, :cond_b

    new-instance v0, Lmiui/date/Calendar;

    invoke-direct {v0}, Lmiui/date/Calendar;-><init>()V

    sput-object v0, Lmiui/maml/data/DateTimeVariableUpdater;->sCalendar:Lmiui/date/Calendar;

    :cond_b
    sget-object v0, Lmiui/maml/data/DateTimeVariableUpdater;->sCalendar:Lmiui/date/Calendar;

    invoke-virtual {v0, p1, p2}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    sget-object v0, Lmiui/maml/data/DateTimeVariableUpdater;->sCalendar:Lmiui/date/Calendar;

    invoke-virtual {v0, p0}, Lmiui/date/Calendar;->format(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initInner(Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;)V
    .registers 10

    const-wide/32 v6, 0xea60

    const/16 v5, 0x14

    const/4 v4, 0x1

    const-string/jumbo v1, "DateTimeVariableUpdater"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "init with accuracy:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lmiui/maml/data/DateTimeVariableUpdater;->-getmiui-maml-data-DateTimeVariableUpdater$AccuracySwitchesValues()[I

    move-result-object v1

    invoke-virtual {p1}, Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_12c

    iput-wide v6, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeAccuracy:J

    iput v5, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeAccuracyField:I

    :goto_35
    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v0, v1, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    new-instance v1, Lmiui/maml/data/IndexedVariable;

    const-string/jumbo v2, "year"

    invoke-direct {v1, v2, v0, v4}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v1, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mYear:Lmiui/maml/data/IndexedVariable;

    new-instance v1, Lmiui/maml/data/IndexedVariable;

    const-string/jumbo v2, "month"

    invoke-direct {v1, v2, v0, v4}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v1, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mMonth:Lmiui/maml/data/IndexedVariable;

    new-instance v1, Lmiui/maml/data/IndexedVariable;

    const-string/jumbo v2, "month1"

    invoke-direct {v1, v2, v0, v4}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v1, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mMonth1:Lmiui/maml/data/IndexedVariable;

    new-instance v1, Lmiui/maml/data/IndexedVariable;

    const-string/jumbo v2, "date"

    invoke-direct {v1, v2, v0, v4}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v1, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mDate:Lmiui/maml/data/IndexedVariable;

    new-instance v1, Lmiui/maml/data/IndexedVariable;

    const-string/jumbo v2, "year_lunar"

    invoke-direct {v1, v2, v0, v4}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v1, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mYearLunar:Lmiui/maml/data/IndexedVariable;

    new-instance v1, Lmiui/maml/data/IndexedVariable;

    const-string/jumbo v2, "year_lunar1864"

    invoke-direct {v1, v2, v0, v4}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v1, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mYearLunar1864:Lmiui/maml/data/IndexedVariable;

    new-instance v1, Lmiui/maml/data/IndexedVariable;

    const-string/jumbo v2, "month_lunar"

    invoke-direct {v1, v2, v0, v4}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v1, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mMonthLunar:Lmiui/maml/data/IndexedVariable;

    new-instance v1, Lmiui/maml/data/IndexedVariable;

    const-string/jumbo v2, "month_lunar_leap"

    invoke-direct {v1, v2, v0, v4}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v1, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mMonthLunarLeap:Lmiui/maml/data/IndexedVariable;

    new-instance v1, Lmiui/maml/data/IndexedVariable;

    const-string/jumbo v2, "date_lunar"

    invoke-direct {v1, v2, v0, v4}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v1, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mDateLunar:Lmiui/maml/data/IndexedVariable;

    new-instance v1, Lmiui/maml/data/IndexedVariable;

    const-string/jumbo v2, "day_of_week"

    invoke-direct {v1, v2, v0, v4}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v1, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mDayOfWeek:Lmiui/maml/data/IndexedVariable;

    new-instance v1, Lmiui/maml/data/IndexedVariable;

    const-string/jumbo v2, "ampm"

    invoke-direct {v1, v2, v0, v4}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v1, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mAmPm:Lmiui/maml/data/IndexedVariable;

    new-instance v1, Lmiui/maml/data/IndexedVariable;

    const-string/jumbo v2, "hour12"

    invoke-direct {v1, v2, v0, v4}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v1, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mHour12:Lmiui/maml/data/IndexedVariable;

    new-instance v1, Lmiui/maml/data/IndexedVariable;

    const-string/jumbo v2, "hour24"

    invoke-direct {v1, v2, v0, v4}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v1, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mHour24:Lmiui/maml/data/IndexedVariable;

    new-instance v1, Lmiui/maml/data/IndexedVariable;

    const-string/jumbo v2, "minute"

    invoke-direct {v1, v2, v0, v4}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v1, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mMinute:Lmiui/maml/data/IndexedVariable;

    new-instance v1, Lmiui/maml/data/IndexedVariable;

    const-string/jumbo v2, "second"

    invoke-direct {v1, v2, v0, v4}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v1, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mSecond:Lmiui/maml/data/IndexedVariable;

    new-instance v1, Lmiui/maml/data/IndexedVariable;

    const-string/jumbo v2, "time"

    invoke-direct {v1, v2, v0, v4}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v1, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTime:Lmiui/maml/data/IndexedVariable;

    new-instance v1, Lmiui/maml/data/IndexedVariable;

    const-string/jumbo v2, "time_sys"

    invoke-direct {v1, v2, v0, v4}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v1, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeSys:Lmiui/maml/data/IndexedVariable;

    iget-object v1, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeSys:Lmiui/maml/data/IndexedVariable;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lmiui/maml/data/IndexedVariable;->set(D)V

    new-instance v1, Lmiui/maml/data/IndexedVariable;

    const-string/jumbo v2, "next_alarm_time"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v1, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mNextAlarm:Lmiui/maml/data/IndexedVariable;

    new-instance v1, Lmiui/maml/data/IndexedVariable;

    const-string/jumbo v2, "time_format"

    invoke-direct {v1, v2, v0, v4}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v1, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeFormatVar:Lmiui/maml/data/IndexedVariable;

    return-void

    :pswitch_105
    const-wide/32 v2, 0x5265c00

    iput-wide v2, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeAccuracy:J

    const/16 v1, 0x9

    iput v1, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeAccuracyField:I

    goto/16 :goto_35

    :pswitch_110
    const-wide/32 v2, 0x36ee80

    iput-wide v2, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeAccuracy:J

    const/16 v1, 0x12

    iput v1, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeAccuracyField:I

    goto/16 :goto_35

    :pswitch_11b
    iput-wide v6, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeAccuracy:J

    iput v5, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeAccuracyField:I

    goto/16 :goto_35

    :pswitch_121
    const-wide/16 v2, 0x3e8

    iput-wide v2, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeAccuracy:J

    const/16 v1, 0x15

    iput v1, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeAccuracyField:I

    goto/16 :goto_35

    nop

    :pswitch_data_12c
    .packed-switch 0x1
        :pswitch_105
        :pswitch_110
        :pswitch_11b
        :pswitch_121
    .end packed-switch
.end method

.method private refreshAlarm()V
    .registers 4

    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "next_alarm_formatted"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mNextAlarm:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v1, v0}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    return-void
.end method

.method private updateTime()V
    .registers 12

    const/16 v10, 0x12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v7, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeSys:Lmiui/maml/data/IndexedVariable;

    long-to-double v8, v2

    invoke-virtual {v7, v8, v9}, Lmiui/maml/data/IndexedVariable;->set(D)V

    const-wide/16 v8, 0x3e8

    div-long v0, v2, v8

    iget-wide v8, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mLastUpdatedTime:J

    cmp-long v7, v0, v8

    if-eqz v7, :cond_e2

    iget-object v7, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiui/date/Calendar;

    invoke-virtual {v7, v2, v3}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    iget-object v7, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiui/date/Calendar;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lmiui/date/Calendar;->get(I)I

    move-result v6

    iget-object v7, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiui/date/Calendar;

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Lmiui/date/Calendar;->get(I)I

    move-result v5

    iget-object v7, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiui/date/Calendar;

    const/16 v8, 0x9

    invoke-virtual {v7, v8}, Lmiui/date/Calendar;->get(I)I

    move-result v4

    iget-object v7, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mAmPm:Lmiui/maml/data/IndexedVariable;

    iget-object v8, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiui/date/Calendar;

    const/16 v9, 0x11

    invoke-virtual {v8, v9}, Lmiui/date/Calendar;->get(I)I

    move-result v8

    int-to-double v8, v8

    invoke-virtual {v7, v8, v9}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iget-object v7, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mHour24:Lmiui/maml/data/IndexedVariable;

    iget-object v8, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiui/date/Calendar;

    invoke-virtual {v8, v10}, Lmiui/date/Calendar;->get(I)I

    move-result v8

    int-to-double v8, v8

    invoke-virtual {v7, v8, v9}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iget-object v7, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mHour12:Lmiui/maml/data/IndexedVariable;

    iget-object v8, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiui/date/Calendar;

    invoke-virtual {v8, v10}, Lmiui/date/Calendar;->get(I)I

    move-result v8

    rem-int/lit8 v8, v8, 0xc

    int-to-double v8, v8

    invoke-virtual {v7, v8, v9}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iget-object v7, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mMinute:Lmiui/maml/data/IndexedVariable;

    iget-object v8, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiui/date/Calendar;

    const/16 v9, 0x14

    invoke-virtual {v8, v9}, Lmiui/date/Calendar;->get(I)I

    move-result v8

    int-to-double v8, v8

    invoke-virtual {v7, v8, v9}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iget-object v7, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mYear:Lmiui/maml/data/IndexedVariable;

    int-to-double v8, v6

    invoke-virtual {v7, v8, v9}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iget-object v7, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mMonth:Lmiui/maml/data/IndexedVariable;

    int-to-double v8, v5

    invoke-virtual {v7, v8, v9}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iget-object v7, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mMonth1:Lmiui/maml/data/IndexedVariable;

    add-int/lit8 v8, v5, 0x1

    int-to-double v8, v8

    invoke-virtual {v7, v8, v9}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iget-object v7, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mDate:Lmiui/maml/data/IndexedVariable;

    int-to-double v8, v4

    invoke-virtual {v7, v8, v9}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iget-object v7, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mDayOfWeek:Lmiui/maml/data/IndexedVariable;

    iget-object v8, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiui/date/Calendar;

    const/16 v9, 0xe

    invoke-virtual {v8, v9}, Lmiui/date/Calendar;->get(I)I

    move-result v8

    int-to-double v8, v8

    invoke-virtual {v7, v8, v9}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iget-object v7, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mSecond:Lmiui/maml/data/IndexedVariable;

    iget-object v8, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiui/date/Calendar;

    const/16 v9, 0x15

    invoke-virtual {v8, v9}, Lmiui/date/Calendar;->get(I)I

    move-result v8

    int-to-double v8, v8

    invoke-virtual {v7, v8, v9}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iget-object v7, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mYearLunar:Lmiui/maml/data/IndexedVariable;

    iget-object v8, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiui/date/Calendar;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lmiui/date/Calendar;->get(I)I

    move-result v8

    int-to-double v8, v8

    invoke-virtual {v7, v8, v9}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iget-object v7, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mMonthLunar:Lmiui/maml/data/IndexedVariable;

    iget-object v8, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiui/date/Calendar;

    const/4 v9, 0x6

    invoke-virtual {v8, v9}, Lmiui/date/Calendar;->get(I)I

    move-result v8

    int-to-double v8, v8

    invoke-virtual {v7, v8, v9}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iget-object v7, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mDateLunar:Lmiui/maml/data/IndexedVariable;

    iget-object v8, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiui/date/Calendar;

    const/16 v9, 0xa

    invoke-virtual {v8, v9}, Lmiui/date/Calendar;->get(I)I

    move-result v8

    int-to-double v8, v8

    invoke-virtual {v7, v8, v9}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iget-object v7, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mYearLunar1864:Lmiui/maml/data/IndexedVariable;

    iget-object v8, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiui/date/Calendar;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lmiui/date/Calendar;->get(I)I

    move-result v8

    int-to-double v8, v8

    invoke-virtual {v7, v8, v9}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iget-object v7, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mMonthLunarLeap:Lmiui/maml/data/IndexedVariable;

    iget-object v8, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiui/date/Calendar;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lmiui/date/Calendar;->get(I)I

    move-result v8

    int-to-double v8, v8

    invoke-virtual {v7, v8, v9}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iput-wide v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mLastUpdatedTime:J

    :cond_e2
    return-void
.end method


# virtual methods
.method public finish()V
    .registers 3

    invoke-super {p0}, Lmiui/maml/data/NotifierVariableUpdater;->finish()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mLastUpdatedTime:J

    const/4 v0, 0x0

    sput-object v0, Lmiui/maml/data/DateTimeVariableUpdater;->sCalendar:Lmiui/date/Calendar;

    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public init()V
    .registers 1

    invoke-super {p0}, Lmiui/maml/data/NotifierVariableUpdater;->init()V

    invoke-direct {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->refreshAlarm()V

    invoke-direct {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->updateTime()V

    invoke-direct {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->checkUpdateTime()V

    return-void
.end method

.method public onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V
    .registers 4

    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->resetCalendar()V

    invoke-direct {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->checkUpdateTime()V

    return-void
.end method

.method public pause()V
    .registers 3

    invoke-super {p0}, Lmiui/maml/data/NotifierVariableUpdater;->pause()V

    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected resetCalendar()V
    .registers 2

    new-instance v0, Lmiui/date/Calendar;

    invoke-direct {v0}, Lmiui/date/Calendar;-><init>()V

    iput-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiui/date/Calendar;

    sget-object v0, Lmiui/maml/data/DateTimeVariableUpdater;->sCalendar:Lmiui/date/Calendar;

    if-eqz v0, :cond_12

    new-instance v0, Lmiui/date/Calendar;

    invoke-direct {v0}, Lmiui/date/Calendar;-><init>()V

    sput-object v0, Lmiui/maml/data/DateTimeVariableUpdater;->sCalendar:Lmiui/date/Calendar;

    :cond_12
    return-void
.end method

.method public resume()V
    .registers 1

    invoke-super {p0}, Lmiui/maml/data/NotifierVariableUpdater;->resume()V

    invoke-direct {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->refreshAlarm()V

    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->resetCalendar()V

    invoke-direct {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->checkUpdateTime()V

    return-void
.end method

.method public tick(J)V
    .registers 8

    invoke-super {p0, p1, p2}, Lmiui/maml/data/NotifierVariableUpdater;->tick(J)V

    iget-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTime:Lmiui/maml/data/IndexedVariable;

    long-to-double v2, p1

    invoke-virtual {v0, v2, v3}, Lmiui/maml/data/IndexedVariable;->set(D)V

    invoke-direct {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->updateTime()V

    return-void
.end method
