.class Landroid/widget/DatePickerCalendarDelegate;
.super Landroid/widget/DatePicker$AbstractDatePickerDelegate;
.source "DatePickerCalendarDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/DatePickerCalendarDelegate$1;,
        Landroid/widget/DatePickerCalendarDelegate$2;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x12c

.field private static final ATTRS_DISABLED_ALPHA:[I

.field private static final ATTRS_TEXT_COLOR:[I

.field private static final DEFAULT_END_YEAR:I = 0x834

.field private static final DEFAULT_START_YEAR:I = 0x76c

.field private static final UNINITIALIZED:I = -0x1

.field private static final USE_LOCALE:I = 0x0

.field private static final VIEW_MONTH_DAY:I = 0x0

.field private static final VIEW_YEAR:I = 0x1


# instance fields
.field private mAnimator:Landroid/widget/ViewAnimator;

.field private mContainer:Landroid/view/ViewGroup;

.field private mCurrentView:I

.field private mDayPickerView:Landroid/widget/DayPickerView;

.field private mFirstDayOfWeek:I

.field private mHeaderMonthDay:Landroid/widget/TextView;

.field private mHeaderYear:Landroid/widget/TextView;

.field private final mMaxDate:Landroid/icu/util/Calendar;

.field private final mMinDate:Landroid/icu/util/Calendar;

.field private mMonthDayFormat:Landroid/icu/text/DateFormat;

.field private final mOnDaySelectedListener:Landroid/widget/DayPickerView$OnDaySelectedListener;

.field private final mOnHeaderClickListener:Landroid/view/View$OnClickListener;

.field private final mOnYearSelectedListener:Landroid/widget/YearPickerView$OnYearSelectedListener;

.field private mSelectDay:Ljava/lang/String;

.field private mSelectYear:Ljava/lang/String;

.field private final mTempDate:Landroid/icu/util/Calendar;

.field private mYearFormat:Landroid/icu/text/DateFormat;

.field private mYearPickerView:Landroid/widget/YearPickerView;


# direct methods
.method static synthetic -get0(Landroid/widget/DatePickerCalendarDelegate;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/widget/DatePickerCalendarDelegate;ZZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/DatePickerCalendarDelegate;->onDateChanged(ZZ)V

    return-void
.end method

.method static synthetic -wrap1(Landroid/widget/DatePickerCalendarDelegate;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/DatePickerCalendarDelegate;->setCurrentView(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [I

    const v1, 0x1010098

    aput v1, v0, v2

    sput-object v0, Landroid/widget/DatePickerCalendarDelegate;->ATTRS_TEXT_COLOR:[I

    new-array v0, v3, [I

    const v1, 0x1010033

    aput v1, v0, v2

    sput-object v0, Landroid/widget/DatePickerCalendarDelegate;->ATTRS_DISABLED_ALPHA:[I

    return-void
.end method

.method public constructor <init>(Landroid/widget/DatePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 24

    invoke-direct/range {p0 .. p2}, Landroid/widget/DatePicker$AbstractDatePickerDelegate;-><init>(Landroid/widget/DatePicker;Landroid/content/Context;)V

    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentView:I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mFirstDayOfWeek:I

    new-instance v14, Landroid/widget/DatePickerCalendarDelegate$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/DatePickerCalendarDelegate$1;-><init>(Landroid/widget/DatePickerCalendarDelegate;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mOnDaySelectedListener:Landroid/widget/DayPickerView$OnDaySelectedListener;

    new-instance v14, Landroid/widget/DatePickerCalendarDelegate$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/DatePickerCalendarDelegate$2;-><init>(Landroid/widget/DatePickerCalendarDelegate;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mOnYearSelectedListener:Landroid/widget/YearPickerView$OnYearSelectedListener;

    new-instance v14, Landroid/widget/-$Lambda$47CjpztMF6VTC4ohP7T_r8sdL0g;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/-$Lambda$47CjpztMF6VTC4ohP7T_r8sdL0g;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mOnHeaderClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentLocale:Ljava/util/Locale;

    invoke-static {v10}, Landroid/icu/util/Calendar;->getInstance(Ljava/util/Locale;)Landroid/icu/util/Calendar;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-static {v10}, Landroid/icu/util/Calendar;->getInstance(Ljava/util/Locale;)Landroid/icu/util/Calendar;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-static {v10}, Landroid/icu/util/Calendar;->getInstance(Ljava/util/Locale;)Landroid/icu/util/Calendar;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-static {v10}, Landroid/icu/util/Calendar;->getInstance(Ljava/util/Locale;)Landroid/icu/util/Calendar;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mMinDate:Landroid/icu/util/Calendar;

    const/16 v15, 0x76c

    const/16 v16, 0x0

    const/16 v17, 0x1

    invoke-virtual/range {v14 .. v17}, Landroid/icu/util/Calendar;->set(III)V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    const/16 v15, 0x834

    const/16 v16, 0xb

    const/16 v17, 0x1f

    invoke-virtual/range {v14 .. v17}, Landroid/icu/util/Calendar;->set(III)V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mDelegator:Landroid/widget/DatePicker;

    invoke-virtual {v14}, Landroid/widget/DatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mContext:Landroid/content/Context;

    sget-object v15, Lcom/android/internal/R$styleable;->DatePicker:[I

    move-object/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-virtual {v14, v0, v15, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mContext:Landroid/content/Context;

    const-string/jumbo v15, "layout_inflater"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    const/16 v14, 0x13

    const v15, 0x109004e

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mDelegator:Landroid/widget/DatePicker;

    const/4 v15, 0x0

    invoke-virtual {v7, v8, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mContainer:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mContainer:Landroid/view/ViewGroup;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->setSaveFromParentEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mDelegator:Landroid/widget/DatePicker;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/DatePickerCalendarDelegate;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v14, v15}, Landroid/widget/DatePicker;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mContainer:Landroid/view/ViewGroup;

    const v15, 0x1020218

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    const v14, 0x102021a

    invoke-virtual {v5, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/DatePickerCalendarDelegate;->mOnHeaderClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v14, 0x1020219

    invoke-virtual {v5, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/DatePickerCalendarDelegate;->mOnHeaderClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v6, 0x0

    const/16 v14, 0xa

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    if-eqz v11, :cond_123

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mContext:Landroid/content/Context;

    sget-object v15, Landroid/widget/DatePickerCalendarDelegate;->ATTRS_TEXT_COLOR:[I

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v14, v0, v15, v1, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Landroid/widget/DatePickerCalendarDelegate;->applyLegacyColorFixes(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    :cond_123
    if-nez v6, :cond_12b

    const/16 v14, 0x12

    invoke-virtual {v4, v14}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    :cond_12b
    if-eqz v6, :cond_13b

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    invoke-virtual {v14, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    invoke-virtual {v14, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_13b
    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v14

    if-eqz v14, :cond_14a

    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v5, v14}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_14a
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mContainer:Landroid/view/ViewGroup;

    const v15, 0x10201ad

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ViewAnimator;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    const v15, 0x1020217

    invoke-virtual {v14, v15}, Landroid/widget/ViewAnimator;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/DayPickerView;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/DatePickerCalendarDelegate;->mFirstDayOfWeek:I

    invoke-virtual {v14, v15}, Landroid/widget/DayPickerView;->setFirstDayOfWeek(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/DatePickerCalendarDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v15}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Landroid/widget/DayPickerView;->setMinDate(J)V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/DatePickerCalendarDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v15}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Landroid/widget/DayPickerView;->setMaxDate(J)V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v15}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Landroid/widget/DayPickerView;->setDate(J)V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/DatePickerCalendarDelegate;->mOnDaySelectedListener:Landroid/widget/DayPickerView$OnDaySelectedListener;

    invoke-virtual {v14, v15}, Landroid/widget/DayPickerView;->setOnDaySelectedListener(Landroid/widget/DayPickerView$OnDaySelectedListener;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    const v15, 0x102021b

    invoke-virtual {v14, v15}, Landroid/widget/ViewAnimator;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/YearPickerView;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/DatePickerCalendarDelegate;->mMinDate:Landroid/icu/util/Calendar;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePickerCalendarDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Landroid/widget/YearPickerView;->setRange(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/icu/util/Calendar;->get(I)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/widget/YearPickerView;->setYear(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/DatePickerCalendarDelegate;->mOnYearSelectedListener:Landroid/widget/YearPickerView$OnYearSelectedListener;

    invoke-virtual {v14, v15}, Landroid/widget/YearPickerView;->setOnYearSelectedListener(Landroid/widget/YearPickerView$OnYearSelectedListener;)V

    const v14, 0x10405ae

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mSelectDay:Ljava/lang/String;

    const v14, 0x10405b4

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mSelectYear:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentLocale:Ljava/util/Locale;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/DatePickerCalendarDelegate;->onLocaleChanged(Ljava/util/Locale;)V

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/widget/DatePickerCalendarDelegate;->setCurrentView(I)V

    return-void
.end method

.method private applyLegacyColorFixes(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .registers 15

    const/4 v12, 0x0

    const v11, 0x10102fe

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    if-eqz p1, :cond_f

    invoke-virtual {p1, v11}, Landroid/content/res/ColorStateList;->hasState(I)Z

    move-result v6

    if-eqz v6, :cond_10

    :cond_f
    return-object p1

    :cond_10
    const v6, 0x10100a1

    invoke-virtual {p1, v6}, Landroid/content/res/ColorStateList;->hasState(I)Z

    move-result v6

    if-eqz v6, :cond_32

    const/16 v6, 0xa

    invoke-static {v6}, Landroid/util/StateSet;->get(I)[I

    move-result-object v6

    invoke-virtual {p1, v6, v8}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    const/16 v6, 0x8

    invoke-static {v6}, Landroid/util/StateSet;->get(I)[I

    move-result-object v6

    invoke-virtual {p1, v6, v8}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    :goto_2d
    if-eqz v0, :cond_31

    if-nez v2, :cond_4a

    :cond_31
    return-object v12

    :cond_32
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    iget-object v6, p0, Landroid/widget/DatePickerCalendarDelegate;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/widget/DatePickerCalendarDelegate;->ATTRS_DISABLED_ALPHA:[I

    invoke-virtual {v6, v7}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v5

    const v6, 0x3e99999a    # 0.3f

    invoke-virtual {v5, v8, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-direct {p0, v0, v3}, Landroid/widget/DatePickerCalendarDelegate;->multiplyAlphaComponent(IF)I

    move-result v2

    goto :goto_2d

    :cond_4a
    new-array v4, v10, [[I

    new-array v6, v9, [I

    aput v11, v6, v8

    aput-object v6, v4, v8

    new-array v6, v8, [I

    aput-object v6, v4, v9

    new-array v1, v10, [I

    aput v0, v1, v8

    aput v2, v1, v9

    new-instance v6, Landroid/content/res/ColorStateList;

    invoke-direct {v6, v4, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v6
.end method

.method public static getDaysInMonth(II)I
    .registers 4

    packed-switch p0, :pswitch_data_1c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid Month"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_c
    const/16 v0, 0x1f

    return v0

    :pswitch_f
    const/16 v0, 0x1e

    return v0

    :pswitch_12
    rem-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_19

    const/16 v0, 0x1d

    :goto_18
    return v0

    :cond_19
    const/16 v0, 0x1c

    goto :goto_18

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_c
        :pswitch_12
        :pswitch_c
        :pswitch_f
        :pswitch_c
        :pswitch_f
        :pswitch_c
        :pswitch_c
        :pswitch_f
        :pswitch_c
        :pswitch_f
        :pswitch_c
    .end packed-switch
.end method

.method private multiplyAlphaComponent(IF)I
    .registers 8

    const v3, 0xffffff

    and-int v2, p1, v3

    shr-int/lit8 v3, p1, 0x18

    and-int/lit16 v1, v3, 0xff

    int-to-float v3, v1

    mul-float/2addr v3, p2

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v0, v3

    shl-int/lit8 v3, v0, 0x18

    or-int/2addr v3, v2

    return v3
.end method

.method private onCurrentDateChanged(Z)V
    .registers 6

    iget-object v2, p0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    if-nez v2, :cond_5

    return-void

    :cond_5
    iget-object v2, p0, Landroid/widget/DatePickerCalendarDelegate;->mYearFormat:Landroid/icu/text/DateFormat;

    iget-object v3, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v3}, Landroid/icu/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Landroid/widget/DatePickerCalendarDelegate;->mMonthDayFormat:Landroid/icu/text/DateFormat;

    iget-object v3, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v3}, Landroid/icu/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_32

    iget-object v2, p0, Landroid/widget/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {p0}, Landroid/widget/DatePickerCalendarDelegate;->getFormattedCurrentDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ViewAnimator;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_32
    return-void
.end method

.method private onDateChanged(ZZ)V
    .registers 9

    iget-object v3, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    if-eqz p2, :cond_35

    iget-object v3, p0, Landroid/widget/DatePickerCalendarDelegate;->mOnDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

    if-nez v3, :cond_11

    iget-object v3, p0, Landroid/widget/DatePickerCalendarDelegate;->mAutoFillChangeListener:Landroid/widget/DatePicker$OnDateChangedListener;

    if-eqz v3, :cond_35

    :cond_11
    iget-object v3, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    iget-object v3, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    iget-object v3, p0, Landroid/widget/DatePickerCalendarDelegate;->mOnDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

    if-eqz v3, :cond_2a

    iget-object v3, p0, Landroid/widget/DatePickerCalendarDelegate;->mOnDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

    iget-object v4, p0, Landroid/widget/DatePickerCalendarDelegate;->mDelegator:Landroid/widget/DatePicker;

    invoke-interface {v3, v4, v2, v1, v0}, Landroid/widget/DatePicker$OnDateChangedListener;->onDateChanged(Landroid/widget/DatePicker;III)V

    :cond_2a
    iget-object v3, p0, Landroid/widget/DatePickerCalendarDelegate;->mAutoFillChangeListener:Landroid/widget/DatePicker$OnDateChangedListener;

    if-eqz v3, :cond_35

    iget-object v3, p0, Landroid/widget/DatePickerCalendarDelegate;->mAutoFillChangeListener:Landroid/widget/DatePicker$OnDateChangedListener;

    iget-object v4, p0, Landroid/widget/DatePickerCalendarDelegate;->mDelegator:Landroid/widget/DatePicker;

    invoke-interface {v3, v4, v2, v1, v0}, Landroid/widget/DatePicker$OnDateChangedListener;->onDateChanged(Landroid/widget/DatePicker;III)V

    :cond_35
    iget-object v3, p0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    iget-object v4, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v4}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/widget/DayPickerView;->setDate(J)V

    iget-object v3, p0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    invoke-virtual {v3, v2}, Landroid/widget/YearPickerView;->setYear(I)V

    invoke-direct {p0, p1}, Landroid/widget/DatePickerCalendarDelegate;->onCurrentDateChanged(Z)V

    if-eqz p1, :cond_4d

    invoke-direct {p0}, Landroid/widget/DatePickerCalendarDelegate;->tryVibrate()V

    :cond_4d
    return-void
.end method

.method private setCurrentView(I)V
    .registers 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_60

    :goto_5
    return-void

    :pswitch_6
    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    iget-object v2, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v2}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/widget/DayPickerView;->setDate(J)V

    iget v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentView:I

    if-eq v1, p1, :cond_26

    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setActivated(Z)V

    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setActivated(Z)V

    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {v1, v4}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    iput p1, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentView:I

    :cond_26
    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    iget-object v2, p0, Landroid/widget/DatePickerCalendarDelegate;->mSelectDay:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/ViewAnimator;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_5

    :pswitch_2e
    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1, v5}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    invoke-virtual {v1, v0}, Landroid/widget/YearPickerView;->setYear(I)V

    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    new-instance v2, Landroid/widget/-$Lambda$2f4l12BcqlVIiuw8w0ONZMWiEpk;

    invoke-direct {v2, v4, p0}, Landroid/widget/-$Lambda$2f4l12BcqlVIiuw8w0ONZMWiEpk;-><init>(BLjava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/widget/YearPickerView;->post(Ljava/lang/Runnable;)Z

    iget v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentView:I

    if-eq v1, p1, :cond_58

    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setActivated(Z)V

    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setActivated(Z)V

    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {v1, v5}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    iput p1, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentView:I

    :cond_58
    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    iget-object v2, p0, Landroid/widget/DatePickerCalendarDelegate;->mSelectYear:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/ViewAnimator;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_5

    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_6
        :pswitch_2e
    .end packed-switch
.end method

.method private setDate(III)V
    .registers 6

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/icu/util/Calendar;->set(II)V

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Landroid/icu/util/Calendar;->set(II)V

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p3}, Landroid/icu/util/Calendar;->set(II)V

    invoke-virtual {p0}, Landroid/widget/DatePickerCalendarDelegate;->resetAutofilledValue()V

    return-void
.end method

.method private tryVibrate()V
    .registers 3

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mDelegator:Landroid/widget/DatePicker;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/DatePicker;->performHapticFeedback(I)Z

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 3

    invoke-virtual {p0, p1}, Landroid/widget/DatePickerCalendarDelegate;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 v0, 0x1

    return v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    const-class v0, Landroid/widget/DatePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCalendarView()Landroid/widget/CalendarView;
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Not supported by calendar-mode DatePicker"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCalendarViewShown()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getDayOfMonth()I
    .registers 3

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getFirstDayOfWeek()I
    .registers 2

    iget v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mFirstDayOfWeek:I

    if-eqz v0, :cond_7

    iget v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mFirstDayOfWeek:I

    return v0

    :cond_7
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    return v0
.end method

.method public getMaxDate()Landroid/icu/util/Calendar;
    .registers 2

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    return-object v0
.end method

.method public getMinDate()Landroid/icu/util/Calendar;
    .registers 2

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mMinDate:Landroid/icu/util/Calendar;

    return-object v0
.end method

.method public getMonth()I
    .registers 3

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getSpinnersShown()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getYear()I
    .registers 3

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/DatePickerCalendarDelegate;->setDate(III)V

    invoke-direct {p0, v0, v0}, Landroid/widget/DatePickerCalendarDelegate;->onDateChanged(ZZ)V

    iput-object p4, p0, Landroid/widget/DatePickerCalendarDelegate;->mOnDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

    return-void
.end method

.method public isEnabled()Z
    .registers 2

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    return v0
.end method

.method synthetic lambda$-android_widget_DatePickerCalendarDelegate_11048(Landroid/view/View;)V
    .registers 3

    invoke-direct {p0}, Landroid/widget/DatePickerCalendarDelegate;->tryVibrate()V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_16

    :goto_a
    return-void

    :pswitch_b
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/DatePickerCalendarDelegate;->setCurrentView(I)V

    goto :goto_a

    :pswitch_10
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/DatePickerCalendarDelegate;->setCurrentView(I)V

    goto :goto_a

    nop

    :pswitch_data_16
    .packed-switch 0x1020219
        :pswitch_10
        :pswitch_b
    .end packed-switch
.end method

.method synthetic lambda$-android_widget_DatePickerCalendarDelegate_13424()V
    .registers 3

    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    invoke-virtual {v1}, Landroid/widget/YearPickerView;->requestFocus()Z

    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    invoke-virtual {v1}, Landroid/widget/YearPickerView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_10
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Landroid/widget/DatePickerCalendarDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    return-void
.end method

.method protected onLocaleChanged(Ljava/util/Locale;)V
    .registers 5

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-string/jumbo v1, "EMMMd"

    invoke-static {v1, p1}, Landroid/icu/text/DateFormat;->getInstanceForSkeleton(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mMonthDayFormat:Landroid/icu/text/DateFormat;

    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mMonthDayFormat:Landroid/icu/text/DateFormat;

    sget-object v2, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_STANDALONE:Landroid/icu/text/DisplayContext;

    invoke-virtual {v1, v2}, Landroid/icu/text/DateFormat;->setContext(Landroid/icu/text/DisplayContext;)V

    const-string/jumbo v1, "y"

    invoke-static {v1, p1}, Landroid/icu/text/DateFormat;->getInstanceForSkeleton(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mYearFormat:Landroid/icu/text/DateFormat;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/widget/DatePickerCalendarDelegate;->onCurrentDateChanged(Z)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 11

    const/4 v8, 0x0

    instance-of v4, p1, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;

    if-eqz v4, :cond_43

    move-object v3, p1

    check-cast v3, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;

    iget-object v4, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v3}, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->getSelectedYear()I

    move-result v5

    invoke-virtual {v3}, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->getSelectedMonth()I

    move-result v6

    invoke-virtual {v3}, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->getSelectedDay()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/icu/util/Calendar;->set(III)V

    iget-object v4, p0, Landroid/widget/DatePickerCalendarDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v3}, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->getMinDate()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    iget-object v4, p0, Landroid/widget/DatePickerCalendarDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v3}, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->getMaxDate()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    invoke-direct {p0, v8}, Landroid/widget/DatePickerCalendarDelegate;->onCurrentDateChanged(Z)V

    invoke-virtual {v3}, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->getCurrentView()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/DatePickerCalendarDelegate;->setCurrentView(I)V

    invoke-virtual {v3}, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->getListPosition()I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_43

    if-nez v0, :cond_44

    iget-object v4, p0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v4, v1}, Landroid/widget/DayPickerView;->setPosition(I)V

    :cond_43
    :goto_43
    return-void

    :cond_44
    const/4 v4, 0x1

    if-ne v0, v4, :cond_43

    invoke-virtual {v3}, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->getListPositionOffset()I

    move-result v2

    iget-object v4, p0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    invoke-virtual {v4, v1, v2}, Landroid/widget/YearPickerView;->setSelectionFromTop(II)V

    goto :goto_43
.end method

.method public onSaveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .registers 15

    const/4 v2, 0x1

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v4

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v5

    const/4 v11, -0x1

    const/4 v12, -0x1

    iget v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentView:I

    if-nez v0, :cond_36

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0}, Landroid/widget/DayPickerView;->getMostVisiblePosition()I

    move-result v11

    :cond_21
    :goto_21
    new-instance v1, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    iget v10, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentView:I

    move-object v2, p1

    invoke-direct/range {v1 .. v12}, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;-><init>(Landroid/os/Parcelable;IIIJJIII)V

    return-object v1

    :cond_36
    iget v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentView:I

    if-ne v0, v2, :cond_21

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    invoke-virtual {v0}, Landroid/widget/YearPickerView;->getFirstVisiblePosition()I

    move-result v11

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    invoke-virtual {v0}, Landroid/widget/YearPickerView;->getFirstPositionOffset()I

    move-result v12

    goto :goto_21
.end method

.method public setCalendarViewShown(Z)V
    .registers 2

    return-void
.end method

.method public setEnabled(Z)V
    .registers 3

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0, p1}, Landroid/widget/DayPickerView;->setEnabled(Z)V

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    invoke-virtual {v0, p1}, Landroid/widget/YearPickerView;->setEnabled(Z)V

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .registers 3

    iput p1, p0, Landroid/widget/DatePickerCalendarDelegate;->mFirstDayOfWeek:I

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0, p1}, Landroid/widget/DayPickerView;->setFirstDayOfWeek(I)V

    return-void
.end method

.method public setMaxDate(J)V
    .registers 8

    const/4 v3, 0x6

    const/4 v2, 0x1

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_24

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, v3}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1, v3}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_24

    return-void

    :cond_24
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    const/4 v0, 0x0

    invoke-direct {p0, v0, v2}, Landroid/widget/DatePickerCalendarDelegate;->onDateChanged(ZZ)V

    :cond_37
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/DayPickerView;->setMaxDate(J)V

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mMinDate:Landroid/icu/util/Calendar;

    iget-object v2, p0, Landroid/widget/DatePickerCalendarDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, v1, v2}, Landroid/widget/YearPickerView;->setRange(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)V

    return-void
.end method

.method public setMinDate(J)V
    .registers 8

    const/4 v3, 0x6

    const/4 v2, 0x1

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_24

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, v3}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1, v3}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_24

    return-void

    :cond_24
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    const/4 v0, 0x0

    invoke-direct {p0, v0, v2}, Landroid/widget/DatePickerCalendarDelegate;->onDateChanged(ZZ)V

    :cond_37
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/DayPickerView;->setMinDate(J)V

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mMinDate:Landroid/icu/util/Calendar;

    iget-object v2, p0, Landroid/widget/DatePickerCalendarDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, v1, v2}, Landroid/widget/YearPickerView;->setRange(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)V

    return-void
.end method

.method public setSpinnersShown(Z)V
    .registers 2

    return-void
.end method

.method public updateDate(III)V
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/DatePickerCalendarDelegate;->setDate(III)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/widget/DatePickerCalendarDelegate;->onDateChanged(ZZ)V

    return-void
.end method
