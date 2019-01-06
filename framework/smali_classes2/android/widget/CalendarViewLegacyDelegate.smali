.class Landroid/widget/CalendarViewLegacyDelegate;
.super Landroid/widget/CalendarView$AbstractCalendarViewDelegate;
.source "CalendarViewLegacyDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;,
        Landroid/widget/CalendarViewLegacyDelegate$WeekView;,
        Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;
    }
.end annotation


# static fields
.field private static final ADJUSTMENT_SCROLL_DURATION:I = 0x1f4

.field private static final DAYS_PER_WEEK:I = 0x7

.field private static final DEFAULT_DATE_TEXT_SIZE:I = 0xe

.field private static final DEFAULT_SHOWN_WEEK_COUNT:I = 0x6

.field private static final DEFAULT_SHOW_WEEK_NUMBER:Z = true

.field private static final DEFAULT_WEEK_DAY_TEXT_APPEARANCE_RES_ID:I = -0x1

.field private static final GOTO_SCROLL_DURATION:I = 0x3e8

.field private static final MILLIS_IN_DAY:J = 0x5265c00L

.field private static final MILLIS_IN_WEEK:J = 0x240c8400L

.field private static final SCROLL_CHANGE_DELAY:I = 0x28

.field private static final SCROLL_HYST_WEEKS:I = 0x2

.field private static final UNSCALED_BOTTOM_BUFFER:I = 0x14

.field private static final UNSCALED_LIST_SCROLL_TOP_OFFSET:I = 0x2

.field private static final UNSCALED_SELECTED_DATE_VERTICAL_BAR_WIDTH:I = 0x6

.field private static final UNSCALED_WEEK_MIN_VISIBLE_HEIGHT:I = 0xc

.field private static final UNSCALED_WEEK_SEPARATOR_LINE_WIDTH:I = 0x1


# instance fields
.field private mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

.field private mBottomBuffer:I

.field private mCurrentMonthDisplayed:I

.field private mCurrentScrollState:I

.field private mDateTextAppearanceResId:I

.field private mDateTextSize:I

.field private mDayNamesHeader:Landroid/view/ViewGroup;

.field private mDayNamesLong:[Ljava/lang/String;

.field private mDayNamesShort:[Ljava/lang/String;

.field private mDaysPerWeek:I

.field private mFirstDayOfMonth:Landroid/icu/util/Calendar;

.field private mFirstDayOfWeek:I

.field private mFocusedMonthDateColor:I

.field private mFriction:F

.field private mIsScrollingUp:Z

.field private mListScrollTopOffset:I

.field private mListView:Landroid/widget/ListView;

.field private mMaxDate:Landroid/icu/util/Calendar;

.field private mMinDate:Landroid/icu/util/Calendar;

.field private mMonthName:Landroid/widget/TextView;

.field private mOnDateChangeListener:Landroid/widget/CalendarView$OnDateChangeListener;

.field private mPreviousScrollPosition:J

.field private mPreviousScrollState:I

.field private mScrollStateChangedRunnable:Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;

.field private mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

.field private final mSelectedDateVerticalBarWidth:I

.field private mSelectedWeekBackgroundColor:I

.field private mShowWeekNumber:Z

.field private mShownWeekCount:I

.field private mTempDate:Landroid/icu/util/Calendar;

.field private mUnfocusedMonthDateColor:I

.field private mVelocityScale:F

.field private mWeekDayTextAppearanceResId:I

.field private mWeekMinVisibleHeight:I

.field private mWeekNumberColor:I

.field private mWeekSeparatorLineColor:I

.field private final mWeekSeparatorLineWidth:I


# direct methods
.method static synthetic -get0(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;
    .registers 2

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    return-object v0
.end method

.method static synthetic -get1(Landroid/widget/CalendarViewLegacyDelegate;)I
    .registers 2

    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDateTextSize:I

    return v0
.end method

.method static synthetic -get10(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/widget/CalendarView$OnDateChangeListener;
    .registers 2

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mOnDateChangeListener:Landroid/widget/CalendarView$OnDateChangeListener;

    return-object v0
.end method

.method static synthetic -get11(Landroid/widget/CalendarViewLegacyDelegate;)I
    .registers 2

    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mPreviousScrollState:I

    return v0
.end method

.method static synthetic -get12(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic -get13(Landroid/widget/CalendarViewLegacyDelegate;)I
    .registers 2

    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mSelectedDateVerticalBarWidth:I

    return v0
.end method

.method static synthetic -get14(Landroid/widget/CalendarViewLegacyDelegate;)I
    .registers 2

    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mSelectedWeekBackgroundColor:I

    return v0
.end method

.method static synthetic -get15(Landroid/widget/CalendarViewLegacyDelegate;)Z
    .registers 2

    iget-boolean v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShowWeekNumber:Z

    return v0
.end method

.method static synthetic -get16(Landroid/widget/CalendarViewLegacyDelegate;)I
    .registers 2

    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShownWeekCount:I

    return v0
.end method

.method static synthetic -get17(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/icu/util/Calendar;
    .registers 2

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Landroid/icu/util/Calendar;

    return-object v0
.end method

.method static synthetic -get18(Landroid/widget/CalendarViewLegacyDelegate;)I
    .registers 2

    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mUnfocusedMonthDateColor:I

    return v0
.end method

.method static synthetic -get19(Landroid/widget/CalendarViewLegacyDelegate;)I
    .registers 2

    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekNumberColor:I

    return v0
.end method

.method static synthetic -get2(Landroid/widget/CalendarViewLegacyDelegate;)I
    .registers 2

    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDaysPerWeek:I

    return v0
.end method

.method static synthetic -get20(Landroid/widget/CalendarViewLegacyDelegate;)I
    .registers 2

    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekSeparatorLineColor:I

    return v0
.end method

.method static synthetic -get21(Landroid/widget/CalendarViewLegacyDelegate;)I
    .registers 2

    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekSeparatorLineWidth:I

    return v0
.end method

.method static synthetic -get3(Landroid/widget/CalendarViewLegacyDelegate;)I
    .registers 2

    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfWeek:I

    return v0
.end method

.method static synthetic -get4(Landroid/widget/CalendarViewLegacyDelegate;)I
    .registers 2

    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFocusedMonthDateColor:I

    return v0
.end method

.method static synthetic -get5(Landroid/widget/CalendarViewLegacyDelegate;)Z
    .registers 2

    iget-boolean v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mIsScrollingUp:Z

    return v0
.end method

.method static synthetic -get6(Landroid/widget/CalendarViewLegacyDelegate;)I
    .registers 2

    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListScrollTopOffset:I

    return v0
.end method

.method static synthetic -get7(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/widget/ListView;
    .registers 2

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic -get8(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/icu/util/Calendar;
    .registers 2

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    return-object v0
.end method

.method static synthetic -get9(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/icu/util/Calendar;
    .registers 2

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    return-object v0
.end method

.method static synthetic -set0(Landroid/widget/CalendarViewLegacyDelegate;I)I
    .registers 2

    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mCurrentScrollState:I

    return p1
.end method

.method static synthetic -set1(Landroid/widget/CalendarViewLegacyDelegate;I)I
    .registers 2

    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mPreviousScrollState:I

    return p1
.end method

.method static synthetic -wrap0(Landroid/widget/CalendarViewLegacyDelegate;Landroid/icu/util/Calendar;)I
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/CalendarViewLegacyDelegate;->getWeeksSinceMinDate(Landroid/icu/util/Calendar;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/widget/CalendarViewLegacyDelegate;Landroid/widget/AbsListView;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/CalendarViewLegacyDelegate;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    return-void
.end method

.method static synthetic -wrap2(Landroid/widget/CalendarViewLegacyDelegate;Landroid/widget/AbsListView;III)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/CalendarViewLegacyDelegate;->onScroll(Landroid/widget/AbsListView;III)V

    return-void
.end method

.method static synthetic -wrap3(Landroid/widget/CalendarViewLegacyDelegate;Landroid/icu/util/Calendar;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/CalendarViewLegacyDelegate;->setMonthDisplayed(Landroid/icu/util/Calendar;)V

    return-void
.end method

.method constructor <init>(Landroid/widget/CalendarView;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 16

    invoke-direct {p0, p1, p2}, Landroid/widget/CalendarView$AbstractCalendarViewDelegate;-><init>(Landroid/widget/CalendarView;Landroid/content/Context;)V

    const/4 v6, 0x2

    iput v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListScrollTopOffset:I

    const/16 v6, 0xc

    iput v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekMinVisibleHeight:I

    const/16 v6, 0x14

    iput v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mBottomBuffer:I

    const/4 v6, 0x7

    iput v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDaysPerWeek:I

    const v6, 0x3d4ccccd    # 0.05f

    iput v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFriction:F

    const v6, 0x3eaa7efa    # 0.333f

    iput v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mVelocityScale:F

    const/4 v6, -0x1

    iput v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mCurrentMonthDisplayed:I

    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mIsScrollingUp:Z

    const/4 v6, 0x0

    iput v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mPreviousScrollState:I

    const/4 v6, 0x0

    iput v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mCurrentScrollState:I

    new-instance v6, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;-><init>(Landroid/widget/CalendarViewLegacyDelegate;Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;)V

    iput-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mScrollStateChangedRunnable:Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;

    sget-object v6, Lcom/android/internal/R$styleable;->CalendarView:[I

    invoke-virtual {p2, p3, v6, p4, p5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShowWeekNumber:Z

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-static {v6}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v6

    iget-object v6, v6, Llibcore/icu/LocaleData;->firstDayOfWeek:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v0, v7, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfWeek:I

    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-static {v5, v6}, Landroid/widget/CalendarView;->parseDate(Ljava/lang/String;Landroid/icu/util/Calendar;)Z

    move-result v6

    if-nez v6, :cond_67

    const-string/jumbo v6, "01/01/1900"

    iget-object v7, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-static {v6, v7}, Landroid/widget/CalendarView;->parseDate(Ljava/lang/String;Landroid/icu/util/Calendar;)Z

    :cond_67
    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-static {v4, v6}, Landroid/widget/CalendarView;->parseDate(Ljava/lang/String;Landroid/icu/util/Calendar;)Z

    move-result v6

    if-nez v6, :cond_7c

    const-string/jumbo v6, "01/01/2100"

    iget-object v7, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-static {v6, v7}, Landroid/widget/CalendarView;->parseDate(Ljava/lang/String;Landroid/icu/util/Calendar;)Z

    :cond_7c
    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    iget-object v7, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v6, v7}, Landroid/icu/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8f

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "Max date cannot be before min date."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_8f
    const/4 v6, 0x4

    const/4 v7, 0x6

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShownWeekCount:I

    const/4 v6, 0x5

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    iput v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mSelectedWeekBackgroundColor:I

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    iput v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFocusedMonthDateColor:I

    const/4 v6, 0x7

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    iput v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mUnfocusedMonthDateColor:I

    const/16 v6, 0x9

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    iput v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekSeparatorLineColor:I

    const/16 v6, 0x8

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    iput v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekNumberColor:I

    const/16 v6, 0xa

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

    const/16 v6, 0xc

    const v7, 0x1030046

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDateTextAppearanceResId:I

    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate;->updateDateTextSize()V

    const/16 v6, 0xb

    const/4 v7, -0x1

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekDayTextAppearanceResId:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDelegator:Landroid/widget/CalendarView;

    invoke-virtual {v6}, Landroid/widget/CalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/high16 v6, 0x41400000    # 12.0f

    const/4 v7, 0x1

    invoke-static {v7, v6, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekMinVisibleHeight:I

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v7, 0x1

    invoke-static {v7, v6, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListScrollTopOffset:I

    const/high16 v6, 0x41a00000    # 20.0f

    const/4 v7, 0x1

    invoke-static {v7, v6, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mBottomBuffer:I

    const/high16 v6, 0x40c00000    # 6.0f

    const/4 v7, 0x1

    invoke-static {v7, v6, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mSelectedDateVerticalBarWidth:I

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    invoke-static {v7, v6, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekSeparatorLineWidth:I

    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    const v6, 0x1090040

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDelegator:Landroid/widget/CalendarView;

    invoke-virtual {v6, v1}, Landroid/widget/CalendarView;->addView(Landroid/view/View;)V

    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDelegator:Landroid/widget/CalendarView;

    const v7, 0x102000a

    invoke-virtual {v6, v7}, Landroid/widget/CalendarView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    iput-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    const v6, 0x102021e

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDayNamesHeader:Landroid/view/ViewGroup;

    const v6, 0x1020315

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMonthName:Landroid/widget/TextView;

    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate;->setUpHeader()V

    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate;->setUpListView()V

    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate;->setUpAdapter()V

    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Landroid/icu/util/Calendar;

    iget-object v7, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v6, v7}, Landroid/icu/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_185

    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-direct {p0, v6, v7, v8, v9}, Landroid/widget/CalendarViewLegacyDelegate;->goTo(Landroid/icu/util/Calendar;ZZZ)V

    :goto_17f
    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDelegator:Landroid/widget/CalendarView;

    invoke-virtual {v6}, Landroid/widget/CalendarView;->invalidate()V

    return-void

    :cond_185
    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    iget-object v7, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {v6, v7}, Landroid/icu/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_198

    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-direct {p0, v6, v7, v8, v9}, Landroid/widget/CalendarViewLegacyDelegate;->goTo(Landroid/icu/util/Calendar;ZZZ)V

    goto :goto_17f

    :cond_198
    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Landroid/icu/util/Calendar;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-direct {p0, v6, v7, v8, v9}, Landroid/widget/CalendarViewLegacyDelegate;->goTo(Landroid/icu/util/Calendar;ZZZ)V

    goto :goto_17f
.end method

.method private static getCalendarForLocale(Landroid/icu/util/Calendar;Ljava/util/Locale;)Landroid/icu/util/Calendar;
    .registers 6

    if-nez p0, :cond_7

    invoke-static {p1}, Landroid/icu/util/Calendar;->getInstance(Ljava/util/Locale;)Landroid/icu/util/Calendar;

    move-result-object v3

    return-object v3

    :cond_7
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {p1}, Landroid/icu/util/Calendar;->getInstance(Ljava/util/Locale;)Landroid/icu/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    return-object v2
.end method

.method private getWeeksSinceMinDate(Landroid/icu/util/Calendar;)I
    .registers 14

    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {p1, v6}, Landroid/icu/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_37

    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "fromDate: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v8}, Landroid/icu/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " does not precede toDate: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_37
    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v8

    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Landroid/icu/util/TimeZone;->getOffset(J)I

    move-result v8

    int-to-long v8, v8

    add-long v2, v6, v8

    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v6}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    iget-object v8, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v8}, Landroid/icu/util/Calendar;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v8

    iget-object v9, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v9}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Landroid/icu/util/TimeZone;->getOffset(J)I

    move-result v8

    int-to-long v8, v8

    add-long v4, v6, v8

    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    const/4 v7, 0x7

    invoke-virtual {v6, v7}, Landroid/icu/util/Calendar;->get(I)I

    move-result v6

    iget v7, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfWeek:I

    sub-int/2addr v6, v7

    int-to-long v6, v6

    const-wide/32 v8, 0x5265c00

    mul-long v0, v6, v8

    sub-long v6, v2, v4

    add-long/2addr v6, v0

    const-wide/32 v8, 0x240c8400

    div-long/2addr v6, v8

    long-to-int v6, v6

    return v6
.end method

.method private goTo(Landroid/icu/util/Calendar;ZZZ)V
    .registers 14

    const/4 v8, 0x0

    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {p1, v4}, Landroid/icu/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {p1, v4}, Landroid/icu/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    :cond_11
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "timeInMillis must be between the values of getMinDate() and getMaxDate()"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1a
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v8}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_30

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    if-gez v4, :cond_30

    add-int/lit8 v1, v1, 0x1

    :cond_30
    iget v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShownWeekCount:I

    add-int/2addr v4, v1

    add-int/lit8 v2, v4, -0x1

    if-eqz v0, :cond_41

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    iget v5, p0, Landroid/widget/CalendarViewLegacyDelegate;->mBottomBuffer:I

    if-le v4, v5, :cond_41

    add-int/lit8 v2, v2, -0x1

    :cond_41
    if-eqz p3, :cond_48

    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    invoke-virtual {v4, p1}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->setSelectedDay(Landroid/icu/util/Calendar;)V

    :cond_48
    invoke-direct {p0, p1}, Landroid/widget/CalendarViewLegacyDelegate;->getWeeksSinceMinDate(Landroid/icu/util/Calendar;)I

    move-result v3

    if-lt v3, v1, :cond_50

    if-le v3, v2, :cond_7f

    :cond_50
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfMonth:Landroid/icu/util/Calendar;

    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfMonth:Landroid/icu/util/Calendar;

    const/4 v5, 0x5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/icu/util/Calendar;->set(II)V

    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfMonth:Landroid/icu/util/Calendar;

    invoke-direct {p0, v4}, Landroid/widget/CalendarViewLegacyDelegate;->setMonthDisplayed(Landroid/icu/util/Calendar;)V

    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfMonth:Landroid/icu/util/Calendar;

    iget-object v5, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v4, v5}, Landroid/icu/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_87

    const/4 v3, 0x0

    :goto_70
    const/4 v4, 0x2

    iput v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mPreviousScrollState:I

    if-eqz p2, :cond_8e

    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    iget v5, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListScrollTopOffset:I

    const/16 v6, 0x3e8

    invoke-virtual {v4, v3, v5, v6}, Landroid/widget/ListView;->smoothScrollToPositionFromTop(III)V

    :cond_7e
    :goto_7e
    return-void

    :cond_7f
    if-nez p4, :cond_50

    if-eqz p3, :cond_7e

    invoke-direct {p0, p1}, Landroid/widget/CalendarViewLegacyDelegate;->setMonthDisplayed(Landroid/icu/util/Calendar;)V

    goto :goto_7e

    :cond_87
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfMonth:Landroid/icu/util/Calendar;

    invoke-direct {p0, v4}, Landroid/widget/CalendarViewLegacyDelegate;->getWeeksSinceMinDate(Landroid/icu/util/Calendar;)I

    move-result v3

    goto :goto_70

    :cond_8e
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    iget v5, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListScrollTopOffset:I

    invoke-virtual {v4, v3, v5}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    invoke-direct {p0, v4, v8}, Landroid/widget/CalendarViewLegacyDelegate;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    goto :goto_7e
.end method

.method private invalidateAllWeekViews()V
    .registers 5

    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_15

    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_15
    return-void
.end method

.method private static isSameDate(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)Z
    .registers 6

    const/4 v3, 0x6

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, v3}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v3}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_1a

    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_18

    :goto_17
    return v0

    :cond_18
    move v0, v1

    goto :goto_17

    :cond_1a
    move v0, v1

    goto :goto_17
.end method

.method private onScroll(Landroid/widget/AbsListView;III)V
    .registers 15

    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;

    if-nez v0, :cond_a

    return-void

    :cond_a
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v7

    invoke-virtual {v0}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->getHeight()I

    move-result v8

    mul-int/2addr v7, v8

    invoke-virtual {v0}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->getBottom()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-long v2, v7

    iget-wide v8, p0, Landroid/widget/CalendarViewLegacyDelegate;->mPreviousScrollPosition:J

    cmp-long v7, v2, v8

    if-gez v7, :cond_67

    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/CalendarViewLegacyDelegate;->mIsScrollingUp:Z

    :goto_22
    invoke-virtual {v0}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->getBottom()I

    move-result v7

    iget v8, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekMinVisibleHeight:I

    if-ge v7, v8, :cond_72

    const/4 v6, 0x1

    :goto_2b
    iget-boolean v7, p0, Landroid/widget/CalendarViewLegacyDelegate;->mIsScrollingUp:Z

    if-eqz v7, :cond_74

    add-int/lit8 v7, v6, 0x2

    invoke-virtual {p1, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;

    :cond_37
    :goto_37
    if-eqz v0, :cond_60

    iget-boolean v7, p0, Landroid/widget/CalendarViewLegacyDelegate;->mIsScrollingUp:Z

    if-eqz v7, :cond_7d

    invoke-virtual {v0}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->getMonthOfFirstWeekDay()I

    move-result v4

    :goto_41
    iget v7, p0, Landroid/widget/CalendarViewLegacyDelegate;->mCurrentMonthDisplayed:I

    const/16 v8, 0xb

    if-ne v7, v8, :cond_82

    if-nez v4, :cond_82

    const/4 v5, 0x1

    :goto_4a
    iget-boolean v7, p0, Landroid/widget/CalendarViewLegacyDelegate;->mIsScrollingUp:Z

    if-nez v7, :cond_91

    if-lez v5, :cond_91

    :goto_50
    invoke-virtual {v0}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->getFirstDay()Landroid/icu/util/Calendar;

    move-result-object v1

    iget-boolean v7, p0, Landroid/widget/CalendarViewLegacyDelegate;->mIsScrollingUp:Z

    if-eqz v7, :cond_98

    const/4 v7, 0x5

    const/4 v8, -0x7

    invoke-virtual {v1, v7, v8}, Landroid/icu/util/Calendar;->add(II)V

    :goto_5d
    invoke-direct {p0, v1}, Landroid/widget/CalendarViewLegacyDelegate;->setMonthDisplayed(Landroid/icu/util/Calendar;)V

    :cond_60
    iput-wide v2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mPreviousScrollPosition:J

    iget v7, p0, Landroid/widget/CalendarViewLegacyDelegate;->mCurrentScrollState:I

    iput v7, p0, Landroid/widget/CalendarViewLegacyDelegate;->mPreviousScrollState:I

    return-void

    :cond_67
    iget-wide v8, p0, Landroid/widget/CalendarViewLegacyDelegate;->mPreviousScrollPosition:J

    cmp-long v7, v2, v8

    if-lez v7, :cond_71

    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/CalendarViewLegacyDelegate;->mIsScrollingUp:Z

    goto :goto_22

    :cond_71
    return-void

    :cond_72
    const/4 v6, 0x0

    goto :goto_2b

    :cond_74
    if-eqz v6, :cond_37

    invoke-virtual {p1, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;

    goto :goto_37

    :cond_7d
    invoke-virtual {v0}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->getMonthOfLastWeekDay()I

    move-result v4

    goto :goto_41

    :cond_82
    iget v7, p0, Landroid/widget/CalendarViewLegacyDelegate;->mCurrentMonthDisplayed:I

    if-nez v7, :cond_8c

    const/16 v7, 0xb

    if-ne v4, v7, :cond_8c

    const/4 v5, -0x1

    goto :goto_4a

    :cond_8c
    iget v7, p0, Landroid/widget/CalendarViewLegacyDelegate;->mCurrentMonthDisplayed:I

    sub-int v5, v4, v7

    goto :goto_4a

    :cond_91
    iget-boolean v7, p0, Landroid/widget/CalendarViewLegacyDelegate;->mIsScrollingUp:Z

    if-eqz v7, :cond_60

    if-gez v5, :cond_60

    goto :goto_50

    :cond_98
    const/4 v7, 0x5

    const/4 v8, 0x7

    invoke-virtual {v1, v7, v8}, Landroid/icu/util/Calendar;->add(II)V

    goto :goto_5d
.end method

.method private onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 4

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mScrollStateChangedRunnable:Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;

    invoke-virtual {v0, p1, p2}, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;->doScrollStateChange(Landroid/widget/AbsListView;I)V

    return-void
.end method

.method private setMonthDisplayed(Landroid/icu/util/Calendar;)V
    .registers 10

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mCurrentMonthDisplayed:I

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    iget v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mCurrentMonthDisplayed:I

    invoke-virtual {v1, v4}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->setFocusMonth(I)V

    const/16 v0, 0x34

    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mContext:Landroid/content/Context;

    const/16 v6, 0x34

    move-wide v4, v2

    invoke-static/range {v1 .. v6}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v7

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMonthName:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMonthName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method private setUpAdapter()V
    .registers 3

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    if-nez v0, :cond_1e

    new-instance v0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;-><init>(Landroid/widget/CalendarViewLegacyDelegate;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    new-instance v1, Landroid/widget/CalendarViewLegacyDelegate$1;

    invoke-direct {v1, p0}, Landroid/widget/CalendarViewLegacyDelegate$1;-><init>(Landroid/widget/CalendarViewLegacyDelegate;)V

    invoke-virtual {v0, v1}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_1e
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    invoke-virtual {v0}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private setUpHeader()V
    .registers 10

    const/16 v8, 0x8

    const/4 v7, 0x0

    iget v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDaysPerWeek:I

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDayNamesShort:[Ljava/lang/String;

    iget v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDaysPerWeek:I

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDayNamesLong:[Ljava/lang/String;

    iget v2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfWeek:I

    iget v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfWeek:I

    iget v5, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDaysPerWeek:I

    add-int v1, v4, v5

    :goto_17
    if-ge v2, v1, :cond_3f

    const/4 v4, 0x7

    if-le v2, v4, :cond_3d

    add-int/lit8 v0, v2, -0x7

    :goto_1e
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDayNamesShort:[Ljava/lang/String;

    iget v5, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfWeek:I

    sub-int v5, v2, v5

    const/16 v6, 0x32

    invoke-static {v0, v6}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDayNamesLong:[Ljava/lang/String;

    iget v5, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfWeek:I

    sub-int v5, v2, v5

    const/16 v6, 0xa

    invoke-static {v0, v6}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_3d
    move v0, v2

    goto :goto_1e

    :cond_3f
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDayNamesHeader:Landroid/view/ViewGroup;

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-boolean v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShowWeekNumber:Z

    if-eqz v4, :cond_87

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_4e
    const/4 v2, 0x1

    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDayNamesHeader:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :goto_55
    if-ge v2, v1, :cond_8f

    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDayNamesHeader:Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekDayTextAppearanceResId:I

    const/4 v5, -0x1

    if-le v4, v5, :cond_69

    iget v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekDayTextAppearanceResId:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextAppearance(I)V

    :cond_69
    iget v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDaysPerWeek:I

    add-int/lit8 v4, v4, 0x1

    if-ge v2, v4, :cond_8b

    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDayNamesShort:[Ljava/lang/String;

    add-int/lit8 v5, v2, -0x1

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDayNamesLong:[Ljava/lang/String;

    add-int/lit8 v5, v2, -0x1

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_84
    add-int/lit8 v2, v2, 0x1

    goto :goto_55

    :cond_87
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4e

    :cond_8b
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_84

    :cond_8f
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDayNamesHeader:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method private setUpListView()V
    .registers 3

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/CalendarViewLegacyDelegate$2;

    invoke-direct {v1, p0}, Landroid/widget/CalendarViewLegacyDelegate$2;-><init>(Landroid/widget/CalendarViewLegacyDelegate;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    iget v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFriction:F

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFriction(F)V

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    iget v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mVelocityScale:F

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVelocityScale(F)V

    return-void
.end method

.method private updateDateTextSize()V
    .registers 5

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDelegator:Landroid/widget/CalendarView;

    invoke-virtual {v1}, Landroid/widget/CalendarView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDateTextAppearanceResId:I

    sget-object v3, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDateTextSize:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getBoundsForDate(JLandroid/graphics/Rect;)Z
    .registers 15

    const/4 v8, 0x2

    const/4 v9, 0x1

    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    iget-object v7, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getCount()I

    move-result v5

    const/4 v4, 0x0

    :goto_10
    if-ge v4, v5, :cond_40

    iget-object v7, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CalendarViewLegacyDelegate$WeekView;

    invoke-virtual {v1, v0, p3}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->getBoundsForDate(Landroid/icu/util/Calendar;Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_3d

    new-array v6, v8, [I

    new-array v2, v8, [I

    invoke-virtual {v1, v6}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->getLocationOnScreen([I)V

    iget-object v7, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDelegator:Landroid/widget/CalendarView;

    invoke-virtual {v7, v2}, Landroid/widget/CalendarView;->getLocationOnScreen([I)V

    aget v7, v6, v9

    aget v8, v2, v9

    sub-int v3, v7, v8

    iget v7, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v3

    iput v7, p3, Landroid/graphics/Rect;->top:I

    iget v7, p3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v3

    iput v7, p3, Landroid/graphics/Rect;->bottom:I

    return v9

    :cond_3d
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :cond_40
    const/4 v7, 0x0

    return v7
.end method

.method public getDate()J
    .registers 3

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->-get0(Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;)Landroid/icu/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDateTextAppearance()I
    .registers 2

    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDateTextAppearanceResId:I

    return v0
.end method

.method public getFirstDayOfWeek()I
    .registers 2

    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfWeek:I

    return v0
.end method

.method public getFocusedMonthDateColor()I
    .registers 2

    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFocusedMonthDateColor:I

    return v0
.end method

.method public getMaxDate()J
    .registers 3

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinDate()J
    .registers 3

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedDateVerticalBar()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSelectedWeekBackgroundColor()I
    .registers 2

    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mSelectedWeekBackgroundColor:I

    return v0
.end method

.method public getShowWeekNumber()Z
    .registers 2

    iget-boolean v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShowWeekNumber:Z

    return v0
.end method

.method public getShownWeekCount()I
    .registers 2

    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShownWeekCount:I

    return v0
.end method

.method public getUnfocusedMonthDateColor()I
    .registers 2

    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mUnfocusedMonthDateColor:I

    return v0
.end method

.method public getWeekDayTextAppearance()I
    .registers 2

    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekDayTextAppearanceResId:I

    return v0
.end method

.method public getWeekNumberColor()I
    .registers 2

    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekNumberColor:I

    return v0
.end method

.method public getWeekSeparatorLineColor()I
    .registers 2

    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekSeparatorLineColor:I

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Landroid/widget/CalendarViewLegacyDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    return-void
.end method

.method protected setCurrentLocale(Ljava/util/Locale;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/CalendarView$AbstractCalendarViewDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-static {v0, p1}, Landroid/widget/CalendarViewLegacyDelegate;->getCalendarForLocale(Landroid/icu/util/Calendar;Ljava/util/Locale;)Landroid/icu/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Landroid/icu/util/Calendar;

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfMonth:Landroid/icu/util/Calendar;

    invoke-static {v0, p1}, Landroid/widget/CalendarViewLegacyDelegate;->getCalendarForLocale(Landroid/icu/util/Calendar;Ljava/util/Locale;)Landroid/icu/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfMonth:Landroid/icu/util/Calendar;

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-static {v0, p1}, Landroid/widget/CalendarViewLegacyDelegate;->getCalendarForLocale(Landroid/icu/util/Calendar;Ljava/util/Locale;)Landroid/icu/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-static {v0, p1}, Landroid/widget/CalendarViewLegacyDelegate;->getCalendarForLocale(Landroid/icu/util/Calendar;Ljava/util/Locale;)Landroid/icu/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    return-void
.end method

.method public setDate(J)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/widget/CalendarViewLegacyDelegate;->setDate(JZZ)V

    return-void
.end method

.method public setDate(JZZ)V
    .registers 8

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Landroid/icu/util/Calendar;

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->-get0(Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;)Landroid/icu/util/Calendar;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/widget/CalendarViewLegacyDelegate;->isSameDate(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_14

    return-void

    :cond_14
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Landroid/icu/util/Calendar;

    const/4 v1, 0x1

    invoke-direct {p0, v0, p3, v1, p4}, Landroid/widget/CalendarViewLegacyDelegate;->goTo(Landroid/icu/util/Calendar;ZZZ)V

    return-void
.end method

.method public setDateTextAppearance(I)V
    .registers 3

    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDateTextAppearanceResId:I

    if-eq v0, p1, :cond_c

    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDateTextAppearanceResId:I

    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate;->updateDateTextSize()V

    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate;->invalidateAllWeekViews()V

    :cond_c
    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .registers 3

    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfWeek:I

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfWeek:I

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->-wrap0(Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;)V

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    invoke-virtual {v0}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->notifyDataSetChanged()V

    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate;->setUpHeader()V

    return-void
.end method

.method public setFocusedMonthDateColor(I)V
    .registers 6

    iget v3, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFocusedMonthDateColor:I

    if-eq v3, p1, :cond_23

    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFocusedMonthDateColor:I

    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_23

    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CalendarViewLegacyDelegate$WeekView;

    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->-get0(Landroid/widget/CalendarViewLegacyDelegate$WeekView;)Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-virtual {v2}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->invalidate()V

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_23
    return-void
.end method

.method public setMaxDate(J)V
    .registers 8

    const/4 v3, 0x0

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Landroid/icu/util/Calendar;

    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-static {v1, v2}, Landroid/widget/CalendarViewLegacyDelegate;->isSameDate(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_11

    return-void

    :cond_11
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->-wrap0(Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;)V

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->-get0(Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;)Landroid/icu/util/Calendar;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Landroid/widget/CalendarViewLegacyDelegate;->setDate(J)V

    :goto_32
    return-void

    :cond_33
    const/4 v1, 0x1

    invoke-direct {p0, v0, v3, v1, v3}, Landroid/widget/CalendarViewLegacyDelegate;->goTo(Landroid/icu/util/Calendar;ZZZ)V

    goto :goto_32
.end method

.method public setMinDate(J)V
    .registers 8

    const/4 v3, 0x0

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Landroid/icu/util/Calendar;

    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-static {v1, v2}, Landroid/widget/CalendarViewLegacyDelegate;->isSameDate(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_11

    return-void

    :cond_11
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->-get0(Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;)Landroid/icu/util/Calendar;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1, v2}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->setSelectedDay(Landroid/icu/util/Calendar;)V

    :cond_2b
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->-wrap0(Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;)V

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Landroid/widget/CalendarViewLegacyDelegate;->setDate(J)V

    :goto_41
    return-void

    :cond_42
    const/4 v1, 0x1

    invoke-direct {p0, v0, v3, v1, v3}, Landroid/widget/CalendarViewLegacyDelegate;->goTo(Landroid/icu/util/Calendar;ZZZ)V

    goto :goto_41
.end method

.method public setOnDateChangeListener(Landroid/widget/CalendarView$OnDateChangeListener;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mOnDateChangeListener:Landroid/widget/CalendarView$OnDateChangeListener;

    return-void
.end method

.method public setSelectedDateVerticalBar(I)V
    .registers 4

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDelegator:Landroid/widget/CalendarView;

    invoke-virtual {v1}, Landroid/widget/CalendarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/CalendarViewLegacyDelegate;->setSelectedDateVerticalBar(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setSelectedDateVerticalBar(Landroid/graphics/drawable/Drawable;)V
    .registers 6

    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

    if-eq v3, p1, :cond_23

    iput-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_23

    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CalendarViewLegacyDelegate$WeekView;

    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->-get1(Landroid/widget/CalendarViewLegacyDelegate$WeekView;)Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-virtual {v2}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->invalidate()V

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_23
    return-void
.end method

.method public setSelectedWeekBackgroundColor(I)V
    .registers 6

    iget v3, p0, Landroid/widget/CalendarViewLegacyDelegate;->mSelectedWeekBackgroundColor:I

    if-eq v3, p1, :cond_23

    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mSelectedWeekBackgroundColor:I

    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_23

    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CalendarViewLegacyDelegate$WeekView;

    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->-get1(Landroid/widget/CalendarViewLegacyDelegate$WeekView;)Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-virtual {v2}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->invalidate()V

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_23
    return-void
.end method

.method public setShowWeekNumber(Z)V
    .registers 3

    iget-boolean v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShowWeekNumber:Z

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iput-boolean p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShowWeekNumber:Z

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    invoke-virtual {v0}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->notifyDataSetChanged()V

    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate;->setUpHeader()V

    return-void
.end method

.method public setShownWeekCount(I)V
    .registers 3

    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShownWeekCount:I

    if-eq v0, p1, :cond_b

    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShownWeekCount:I

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDelegator:Landroid/widget/CalendarView;

    invoke-virtual {v0}, Landroid/widget/CalendarView;->invalidate()V

    :cond_b
    return-void
.end method

.method public setUnfocusedMonthDateColor(I)V
    .registers 6

    iget v3, p0, Landroid/widget/CalendarViewLegacyDelegate;->mUnfocusedMonthDateColor:I

    if-eq v3, p1, :cond_23

    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mUnfocusedMonthDateColor:I

    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_23

    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CalendarViewLegacyDelegate$WeekView;

    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->-get2(Landroid/widget/CalendarViewLegacyDelegate$WeekView;)Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-virtual {v2}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->invalidate()V

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_23
    return-void
.end method

.method public setWeekDayTextAppearance(I)V
    .registers 3

    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekDayTextAppearanceResId:I

    if-eq v0, p1, :cond_9

    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekDayTextAppearanceResId:I

    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate;->setUpHeader()V

    :cond_9
    return-void
.end method

.method public setWeekNumberColor(I)V
    .registers 3

    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekNumberColor:I

    if-eq v0, p1, :cond_d

    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekNumberColor:I

    iget-boolean v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShowWeekNumber:Z

    if-eqz v0, :cond_d

    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate;->invalidateAllWeekViews()V

    :cond_d
    return-void
.end method

.method public setWeekSeparatorLineColor(I)V
    .registers 3

    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekSeparatorLineColor:I

    if-eq v0, p1, :cond_9

    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekSeparatorLineColor:I

    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate;->invalidateAllWeekViews()V

    :cond_9
    return-void
.end method
