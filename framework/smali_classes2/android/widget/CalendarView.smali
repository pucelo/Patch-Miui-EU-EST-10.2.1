.class public Landroid/widget/CalendarView;
.super Landroid/widget/FrameLayout;
.source "CalendarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/CalendarView$AbstractCalendarViewDelegate;,
        Landroid/widget/CalendarView$CalendarViewDelegate;,
        Landroid/widget/CalendarView$OnDateChangeListener;
    }
.end annotation


# static fields
.field private static final DATE_FORMAT:Ljava/lang/String; = "MM/dd/yyyy"

.field private static final DATE_FORMATTER:Ljava/text/DateFormat;

.field private static final LOG_TAG:Ljava/lang/String; = "CalendarView"

.field private static final MODE_HOLO:I = 0x0

.field private static final MODE_MATERIAL:I = 0x1


# instance fields
.field private final mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "MM/dd/yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/widget/CalendarView;->DATE_FORMATTER:Ljava/text/DateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/CalendarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const v0, 0x101035d

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CalendarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/CalendarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 13

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    sget-object v0, Lcom/android/internal/R$styleable;->CalendarView:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    const/16 v0, 0xd

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    packed-switch v7, :pswitch_data_3a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid calendarViewMode attribute"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1f
    new-instance v0, Landroid/widget/CalendarViewLegacyDelegate;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/CalendarViewLegacyDelegate;-><init>(Landroid/widget/CalendarView;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    :goto_2b
    return-void

    :pswitch_2c
    new-instance v0, Landroid/widget/CalendarViewMaterialDelegate;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/CalendarViewMaterialDelegate;-><init>(Landroid/widget/CalendarView;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    goto :goto_2b

    nop

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_2c
    .end packed-switch
.end method

.method public static parseDate(Ljava/lang/String;Landroid/icu/util/Calendar;)Z
    .registers 8

    const/4 v5, 0x0

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_9
    return v5

    :cond_a
    :try_start_a
    sget-object v2, Landroid/widget/CalendarView;->DATE_FORMATTER:Ljava/text/DateFormat;

    invoke-virtual {v2, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/icu/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_13
    .catch Ljava/text/ParseException; {:try_start_a .. :try_end_13} :catch_15

    const/4 v2, 0x1

    return v2

    :catch_15
    move-exception v0

    const-string/jumbo v2, "CalendarView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Date: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " not in format: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "MM/dd/yyyy"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v5
.end method


# virtual methods
.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    const-class v0, Landroid/widget/CalendarView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBoundsForDate(JLandroid/graphics/Rect;)Z
    .registers 5

    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    invoke-interface {v0, p1, p2, p3}, Landroid/widget/CalendarView$CalendarViewDelegate;->getBoundsForDate(JLandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public getDate()J
    .registers 3

    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    invoke-interface {v0}, Landroid/widget/CalendarView$CalendarViewDelegate;->getDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDateTextAppearance()I
    .registers 2

    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    invoke-interface {v0}, Landroid/widget/CalendarView$CalendarViewDelegate;->getDateTextAppearance()I

    move-result v0

    return v0
.end method

.method public getFirstDayOfWeek()I
    .registers 2

    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    invoke-interface {v0}, Landroid/widget/CalendarView$CalendarViewDelegate;->getFirstDayOfWeek()I

    move-result v0

    return v0
.end method

.method public getFocusedMonthDateColor()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    invoke-interface {v0}, Landroid/widget/CalendarView$CalendarViewDelegate;->getFocusedMonthDateColor()I

    move-result v0

    return v0
.end method

.method public getMaxDate()J
    .registers 3

    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    invoke-interface {v0}, Landroid/widget/CalendarView$CalendarViewDelegate;->getMaxDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinDate()J
    .registers 3

    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    invoke-interface {v0}, Landroid/widget/CalendarView$CalendarViewDelegate;->getMinDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedDateVerticalBar()Landroid/graphics/drawable/Drawable;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    invoke-interface {v0}, Landroid/widget/CalendarView$CalendarViewDelegate;->getSelectedDateVerticalBar()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedWeekBackgroundColor()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    invoke-interface {v0}, Landroid/widget/CalendarView$CalendarViewDelegate;->getSelectedWeekBackgroundColor()I

    move-result v0

    return v0
.end method

.method public getShowWeekNumber()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    invoke-interface {v0}, Landroid/widget/CalendarView$CalendarViewDelegate;->getShowWeekNumber()Z

    move-result v0

    return v0
.end method

.method public getShownWeekCount()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    invoke-interface {v0}, Landroid/widget/CalendarView$CalendarViewDelegate;->getShownWeekCount()I

    move-result v0

    return v0
.end method

.method public getUnfocusedMonthDateColor()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    invoke-interface {v0}, Landroid/widget/CalendarView$CalendarViewDelegate;->getUnfocusedMonthDateColor()I

    move-result v0

    return v0
.end method

.method public getWeekDayTextAppearance()I
    .registers 2

    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    invoke-interface {v0}, Landroid/widget/CalendarView$CalendarViewDelegate;->getWeekDayTextAppearance()I

    move-result v0

    return v0
.end method

.method public getWeekNumberColor()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    invoke-interface {v0}, Landroid/widget/CalendarView$CalendarViewDelegate;->getWeekNumberColor()I

    move-result v0

    return v0
.end method

.method public getWeekSeparatorLineColor()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    invoke-interface {v0}, Landroid/widget/CalendarView$CalendarViewDelegate;->getWeekSeparatorLineColor()I

    move-result v0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    invoke-interface {v0, p1}, Landroid/widget/CalendarView$CalendarViewDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public setDate(J)V
    .registers 4

    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    invoke-interface {v0, p1, p2}, Landroid/widget/CalendarView$CalendarViewDelegate;->setDate(J)V

    return-void
.end method

.method public setDate(JZZ)V
    .registers 6

    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/CalendarView$CalendarViewDelegate;->setDate(JZZ)V

    return-void
.end method

.method public setDateTextAppearance(I)V
    .registers 3

    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    invoke-interface {v0, p1}, Landroid/widget/CalendarView$CalendarViewDelegate;->setDateTextAppearance(I)V

    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .registers 3

    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    invoke-interface {v0, p1}, Landroid/widget/CalendarView$CalendarViewDelegate;->setFirstDayOfWeek(I)V

    return-void
.end method

.method public setFocusedMonthDateColor(I)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    invoke-interface {v0, p1}, Landroid/widget/CalendarView$CalendarViewDelegate;->setFocusedMonthDateColor(I)V

    return-void
.end method

.method public setMaxDate(J)V
    .registers 4

    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    invoke-interface {v0, p1, p2}, Landroid/widget/CalendarView$CalendarViewDelegate;->setMaxDate(J)V

    return-void
.end method

.method public setMinDate(J)V
    .registers 4

    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    invoke-interface {v0, p1, p2}, Landroid/widget/CalendarView$CalendarViewDelegate;->setMinDate(J)V

    return-void
.end method

.method public setOnDateChangeListener(Landroid/widget/CalendarView$OnDateChangeListener;)V
    .registers 3

    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    invoke-interface {v0, p1}, Landroid/widget/CalendarView$CalendarViewDelegate;->setOnDateChangeListener(Landroid/widget/CalendarView$OnDateChangeListener;)V

    return-void
.end method

.method public setSelectedDateVerticalBar(I)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    invoke-interface {v0, p1}, Landroid/widget/CalendarView$CalendarViewDelegate;->setSelectedDateVerticalBar(I)V

    return-void
.end method

.method public setSelectedDateVerticalBar(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    invoke-interface {v0, p1}, Landroid/widget/CalendarView$CalendarViewDelegate;->setSelectedDateVerticalBar(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setSelectedWeekBackgroundColor(I)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    invoke-interface {v0, p1}, Landroid/widget/CalendarView$CalendarViewDelegate;->setSelectedWeekBackgroundColor(I)V

    return-void
.end method

.method public setShowWeekNumber(Z)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    invoke-interface {v0, p1}, Landroid/widget/CalendarView$CalendarViewDelegate;->setShowWeekNumber(Z)V

    return-void
.end method

.method public setShownWeekCount(I)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    invoke-interface {v0, p1}, Landroid/widget/CalendarView$CalendarViewDelegate;->setShownWeekCount(I)V

    return-void
.end method

.method public setUnfocusedMonthDateColor(I)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    invoke-interface {v0, p1}, Landroid/widget/CalendarView$CalendarViewDelegate;->setUnfocusedMonthDateColor(I)V

    return-void
.end method

.method public setWeekDayTextAppearance(I)V
    .registers 3

    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    invoke-interface {v0, p1}, Landroid/widget/CalendarView$CalendarViewDelegate;->setWeekDayTextAppearance(I)V

    return-void
.end method

.method public setWeekNumberColor(I)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    invoke-interface {v0, p1}, Landroid/widget/CalendarView$CalendarViewDelegate;->setWeekNumberColor(I)V

    return-void
.end method

.method public setWeekSeparatorLineColor(I)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    invoke-interface {v0, p1}, Landroid/widget/CalendarView$CalendarViewDelegate;->setWeekSeparatorLineColor(I)V

    return-void
.end method