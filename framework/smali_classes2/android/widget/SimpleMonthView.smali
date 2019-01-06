.class Landroid/widget/SimpleMonthView;
.super Landroid/view/View;
.source "SimpleMonthView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SimpleMonthView$MonthViewTouchHelper;,
        Landroid/widget/SimpleMonthView$OnDayClickListener;
    }
.end annotation


# static fields
.field private static final DAYS_IN_WEEK:I = 0x7

.field private static final DEFAULT_SELECTED_DAY:I = -0x1

.field private static final DEFAULT_WEEK_START:I = 0x1

.field private static final MAX_WEEKS_IN_MONTH:I = 0x6

.field private static final MONTH_YEAR_FORMAT:Ljava/lang/String; = "MMMMy"

.field private static final SELECTED_HIGHLIGHT_ALPHA:I = 0xb0


# instance fields
.field private mActivatedDay:I

.field private final mCalendar:Landroid/icu/util/Calendar;

.field private mCellWidth:I

.field private final mDayFormatter:Ljava/text/NumberFormat;

.field private mDayHeight:I

.field private final mDayHighlightPaint:Landroid/graphics/Paint;

.field private final mDayHighlightSelectorPaint:Landroid/graphics/Paint;

.field private mDayOfWeekHeight:I

.field private final mDayOfWeekLabels:[Ljava/lang/String;

.field private final mDayOfWeekPaint:Landroid/text/TextPaint;

.field private mDayOfWeekStart:I

.field private final mDayPaint:Landroid/text/TextPaint;

.field private final mDaySelectorPaint:Landroid/graphics/Paint;

.field private mDaySelectorRadius:I

.field private mDayTextColor:Landroid/content/res/ColorStateList;

.field private mDaysInMonth:I

.field private final mDesiredCellWidth:I

.field private final mDesiredDayHeight:I

.field private final mDesiredDayOfWeekHeight:I

.field private final mDesiredDaySelectorRadius:I

.field private final mDesiredMonthHeight:I

.field private mEnabledDayEnd:I

.field private mEnabledDayStart:I

.field private mHighlightedDay:I

.field private mIsTouchHighlighted:Z

.field private final mLocale:Ljava/util/Locale;

.field private mMonth:I

.field private mMonthHeight:I

.field private final mMonthPaint:Landroid/text/TextPaint;

.field private mMonthYearLabel:Ljava/lang/String;

.field private mOnDayClickListener:Landroid/widget/SimpleMonthView$OnDayClickListener;

.field private mPaddedHeight:I

.field private mPaddedWidth:I

.field private mPreviouslyHighlightedDay:I

.field private mToday:I

.field private final mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

.field private mWeekStart:I

.field private mYear:I


# direct methods
.method static synthetic -get0(Landroid/widget/SimpleMonthView;)I
    .registers 2

    iget v0, p0, Landroid/widget/SimpleMonthView;->mActivatedDay:I

    return v0
.end method

.method static synthetic -get1(Landroid/widget/SimpleMonthView;)Ljava/text/NumberFormat;
    .registers 2

    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayFormatter:Ljava/text/NumberFormat;

    return-object v0
.end method

.method static synthetic -get2(Landroid/widget/SimpleMonthView;)I
    .registers 2

    iget v0, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    return v0
.end method

.method static synthetic -get3(Landroid/widget/SimpleMonthView;)I
    .registers 2

    iget v0, p0, Landroid/widget/SimpleMonthView;->mMonth:I

    return v0
.end method

.method static synthetic -get4(Landroid/widget/SimpleMonthView;)I
    .registers 2

    iget v0, p0, Landroid/widget/SimpleMonthView;->mYear:I

    return v0
.end method

.method static synthetic -wrap0(Landroid/widget/SimpleMonthView;I)Z
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->isDayEnabled(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/widget/SimpleMonthView;I)Z
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->isValidDayOfMonth(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Landroid/widget/SimpleMonthView;I)Z
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->onDayClicked(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Landroid/widget/SimpleMonthView;II)I
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/SimpleMonthView;->getDayAtLocation(II)I

    move-result v0

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/SimpleMonthView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const v0, 0x101035c

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/SimpleMonthView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/SimpleMonthView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 9

    const/4 v3, 0x1

    const/4 v2, -0x1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    iput-object v1, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    iput-object v1, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    iput-object v1, p0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Landroid/widget/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Landroid/widget/SimpleMonthView;->mDayHighlightPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Landroid/widget/SimpleMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekLabels:[Ljava/lang/String;

    iput v2, p0, Landroid/widget/SimpleMonthView;->mActivatedDay:I

    iput v2, p0, Landroid/widget/SimpleMonthView;->mToday:I

    iput v3, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    iput v3, p0, Landroid/widget/SimpleMonthView;->mEnabledDayStart:I

    const/16 v1, 0x1f

    iput v1, p0, Landroid/widget/SimpleMonthView;->mEnabledDayEnd:I

    iput v2, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    iput v2, p0, Landroid/widget/SimpleMonthView;->mPreviouslyHighlightedDay:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/SimpleMonthView;->mIsTouchHighlighted:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050055

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/widget/SimpleMonthView;->mDesiredMonthHeight:I

    const v1, 0x1050050

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/widget/SimpleMonthView;->mDesiredDayOfWeekHeight:I

    const v1, 0x105004f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/widget/SimpleMonthView;->mDesiredDayHeight:I

    const v1, 0x1050054

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/widget/SimpleMonthView;->mDesiredCellWidth:I

    const v1, 0x1050052

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/widget/SimpleMonthView;->mDesiredDaySelectorRadius:I

    new-instance v1, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-direct {v1, p0, p0}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;-><init>(Landroid/widget/SimpleMonthView;Landroid/view/View;)V

    iput-object v1, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {p0, v1}, Landroid/widget/SimpleMonthView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    invoke-virtual {p0, v3}, Landroid/widget/SimpleMonthView;->setImportantForAccessibility(I)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v1, p0, Landroid/widget/SimpleMonthView;->mLocale:Ljava/util/Locale;

    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mLocale:Ljava/util/Locale;

    invoke-static {v1}, Landroid/icu/util/Calendar;->getInstance(Ljava/util/Locale;)Landroid/icu/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/SimpleMonthView;->mCalendar:Landroid/icu/util/Calendar;

    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mLocale:Ljava/util/Locale;

    invoke-static {v1}, Ljava/text/NumberFormat;->getIntegerInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/SimpleMonthView;->mDayFormatter:Ljava/text/NumberFormat;

    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->updateMonthYearLabel()V

    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->updateDayOfWeekLabels()V

    invoke-direct {p0, v0}, Landroid/widget/SimpleMonthView;->initPaints(Landroid/content/res/Resources;)V

    return-void
.end method

.method private applyTextAppearance(Landroid/graphics/Paint;I)Landroid/content/res/ColorStateList;
    .registers 11

    const/4 v7, 0x0

    const/4 v6, 0x0

    iget-object v4, p0, Landroid/widget/SimpleMonthView;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {v4, v7, v5, v6, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    const/16 v4, 0xc

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_19

    invoke-static {v1, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_19
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v6, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    if-eqz v3, :cond_36

    sget-object v4, Landroid/widget/SimpleMonthView;->ENABLED_STATE_SET:[I

    invoke-virtual {v3, v4, v6}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_36
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    return-object v3
.end method

.method private drawDays(Landroid/graphics/Canvas;)V
    .registers 30

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleMonthView;->mMonthHeight:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleMonthView;->mDayOfWeekHeight:I

    move/from16 v25, v0

    add-int v13, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleMonthView;->mDayHeight:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/SimpleMonthView;->mCellWidth:I

    invoke-virtual/range {v18 .. v18}, Landroid/text/TextPaint;->ascent()F

    move-result v24

    invoke-virtual/range {v18 .. v18}, Landroid/text/TextPaint;->descent()F

    move-result v25

    add-float v24, v24, v25

    const/high16 v25, 0x40000000    # 2.0f

    div-float v12, v24, v25

    div-int/lit8 v24, v21, 0x2

    add-int v20, v13, v24

    const/4 v10, 0x1

    invoke-direct/range {p0 .. p0}, Landroid/widget/SimpleMonthView;->findDayOffset()I

    move-result v6

    :goto_35
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-gt v10, v0, :cond_156

    mul-int v24, v9, v6

    div-int/lit8 v25, v9, 0x2

    add-int v7, v24, v25

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SimpleMonthView;->isLayoutRtl()Z

    move-result v24

    if-eqz v24, :cond_fa

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    move/from16 v24, v0

    sub-int v8, v24, v7

    :goto_53
    const/16 v22, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Landroid/widget/SimpleMonthView;->isDayEnabled(I)Z

    move-result v15

    if-eqz v15, :cond_5f

    const/16 v22, 0x8

    :cond_5f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleMonthView;->mActivatedDay:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ne v0, v10, :cond_fd

    const/4 v14, 0x1

    :goto_6a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ne v0, v10, :cond_100

    const/16 v16, 0x1

    :goto_76
    if-eqz v14, :cond_10c

    or-int/lit8 v22, v22, 0x20

    if-eqz v16, :cond_104

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SimpleMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    :goto_82
    int-to-float v0, v8

    move/from16 v24, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleMonthView;->mDaySelectorRadius:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move-object/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_a2
    :goto_a2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleMonthView;->mToday:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ne v0, v10, :cond_13a

    const/16 v17, 0x1

    :goto_ae
    if-eqz v17, :cond_13e

    xor-int/lit8 v24, v14, 0x1

    if-eqz v24, :cond_13e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Paint;->getColor()I

    move-result v11

    :goto_be
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/text/TextPaint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SimpleMonthView;->mDayFormatter:Ljava/text/NumberFormat;

    move-object/from16 v24, v0

    int-to-long v0, v10

    move-wide/from16 v26, v0

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v24

    int-to-float v0, v8

    move/from16 v25, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v26, v0

    sub-float v26, v26, v12

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v6, v6, 0x1

    const/16 v24, 0x7

    move/from16 v0, v24

    if-ne v6, v0, :cond_f6

    const/4 v6, 0x0

    add-int v20, v20, v21

    :cond_f6
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_35

    :cond_fa
    move v8, v7

    goto/16 :goto_53

    :cond_fd
    const/4 v14, 0x0

    goto/16 :goto_6a

    :cond_100
    const/16 v16, 0x0

    goto/16 :goto_76

    :cond_104
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    goto/16 :goto_82

    :cond_10c
    if-eqz v16, :cond_a2

    or-int/lit8 v22, v22, 0x10

    if-eqz v15, :cond_a2

    int-to-float v0, v8

    move/from16 v24, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleMonthView;->mDaySelectorRadius:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SimpleMonthView;->mDayHighlightPaint:Landroid/graphics/Paint;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move-object/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_a2

    :cond_13a
    const/16 v17, 0x0

    goto/16 :goto_ae

    :cond_13e
    invoke-static/range {v22 .. v22}, Landroid/util/StateSet;->get(I)[I

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SimpleMonthView;->mDayTextColor:Landroid/content/res/ColorStateList;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v11

    goto/16 :goto_be

    :cond_156
    return-void
.end method

.method private drawDaysOfWeek(Landroid/graphics/Canvas;)V
    .registers 14

    iget-object v7, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    iget v5, p0, Landroid/widget/SimpleMonthView;->mMonthHeight:I

    iget v9, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekHeight:I

    iget v3, p0, Landroid/widget/SimpleMonthView;->mCellWidth:I

    invoke-virtual {v7}, Landroid/text/TextPaint;->ascent()F

    move-result v10

    invoke-virtual {v7}, Landroid/text/TextPaint;->descent()F

    move-result v11

    add-float/2addr v10, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float v4, v10, v11

    div-int/lit8 v10, v9, 0x2

    add-int v8, v5, v10

    const/4 v0, 0x0

    :goto_1a
    const/4 v10, 0x7

    if-ge v0, v10, :cond_3c

    mul-int v10, v3, v0

    div-int/lit8 v11, v3, 0x2

    add-int v1, v10, v11

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->isLayoutRtl()Z

    move-result v10

    if-eqz v10, :cond_3a

    iget v10, p0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    sub-int v2, v10, v1

    :goto_2d
    iget-object v10, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekLabels:[Ljava/lang/String;

    aget-object v6, v10, v0

    int-to-float v10, v2

    int-to-float v11, v8

    sub-float/2addr v11, v4

    invoke-virtual {p1, v6, v10, v11, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_3a
    move v2, v1

    goto :goto_2d

    :cond_3c
    return-void
.end method

.method private drawMonth(Landroid/graphics/Canvas;)V
    .registers 8

    const/high16 v5, 0x40000000    # 2.0f

    iget v3, p0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    int-to-float v3, v3

    div-float v1, v3, v5

    iget-object v3, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->ascent()F

    move-result v3

    iget-object v4, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->descent()F

    move-result v4

    add-float v0, v3, v4

    iget v3, p0, Landroid/widget/SimpleMonthView;->mMonthHeight:I

    int-to-float v3, v3

    sub-float/2addr v3, v0

    div-float v2, v3, v5

    iget-object v3, p0, Landroid/widget/SimpleMonthView;->mMonthYearLabel:Ljava/lang/String;

    iget-object v4, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v3, v1, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private ensureFocusedDay()V
    .registers 3

    const/4 v1, -0x1

    iget v0, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    if-eq v0, v1, :cond_6

    return-void

    :cond_6
    iget v0, p0, Landroid/widget/SimpleMonthView;->mPreviouslyHighlightedDay:I

    if-eq v0, v1, :cond_f

    iget v0, p0, Landroid/widget/SimpleMonthView;->mPreviouslyHighlightedDay:I

    iput v0, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    return-void

    :cond_f
    iget v0, p0, Landroid/widget/SimpleMonthView;->mActivatedDay:I

    if-eq v0, v1, :cond_18

    iget v0, p0, Landroid/widget/SimpleMonthView;->mActivatedDay:I

    iput v0, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    return-void

    :cond_18
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    return-void
.end method

.method private findClosestColumn(Landroid/graphics/Rect;)I
    .registers 7

    if-nez p1, :cond_4

    const/4 v2, 0x3

    return v2

    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    iget v3, p0, Landroid/widget/SimpleMonthView;->mPaddingLeft:I

    sub-int v0, v2, v3

    iget v2, p0, Landroid/widget/SimpleMonthView;->mCellWidth:I

    div-int v2, v0, v2

    const/4 v3, 0x0

    const/4 v4, 0x6

    invoke-static {v2, v3, v4}, Landroid/util/MathUtils;->constrain(III)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_20

    rsub-int/lit8 v2, v1, 0x7

    add-int/lit8 v1, v2, -0x1

    :cond_20
    return v1
.end method

.method private findClosestRow(Landroid/graphics/Rect;)I
    .registers 14

    const/4 v10, 0x0

    if-nez p1, :cond_5

    const/4 v9, 0x3

    return v9

    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    iget-object v5, p0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    iget v9, p0, Landroid/widget/SimpleMonthView;->mMonthHeight:I

    iget v11, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekHeight:I

    add-int v2, v9, v11

    iget v8, p0, Landroid/widget/SimpleMonthView;->mDayHeight:I

    invoke-virtual {v5}, Landroid/text/TextPaint;->ascent()F

    move-result v9

    invoke-virtual {v5}, Landroid/text/TextPaint;->descent()F

    move-result v11

    add-float/2addr v9, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float v1, v9, v11

    div-int/lit8 v9, v8, 0x2

    add-int v7, v2, v9

    int-to-float v9, v0

    int-to-float v11, v7

    sub-float/2addr v11, v1

    sub-float/2addr v9, v11

    float-to-int v0, v9

    int-to-float v9, v0

    int-to-float v11, v8

    div-float/2addr v9, v11

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->findDayOffset()I

    move-result v9

    iget v11, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    add-int v3, v9, v11

    div-int/lit8 v11, v3, 0x7

    rem-int/lit8 v9, v3, 0x7

    if-nez v9, :cond_46

    const/4 v9, 0x1

    :goto_3f
    sub-int v4, v11, v9

    invoke-static {v6, v10, v4}, Landroid/util/MathUtils;->constrain(III)I

    move-result v6

    return v6

    :cond_46
    move v9, v10

    goto :goto_3f
.end method

.method private findDayOffset()I
    .registers 4

    iget v1, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekStart:I

    iget v2, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    sub-int v0, v1, v2

    iget v1, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekStart:I

    iget v2, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    if-ge v1, v2, :cond_f

    add-int/lit8 v1, v0, 0x7

    return v1

    :cond_f
    return v0
.end method

.method private getDayAtLocation(II)I
    .registers 14

    const/4 v10, -0x1

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingLeft()I

    move-result v8

    sub-int v4, p1, v8

    if-ltz v4, :cond_d

    iget v8, p0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    if-lt v4, v8, :cond_e

    :cond_d
    return v10

    :cond_e
    iget v8, p0, Landroid/widget/SimpleMonthView;->mMonthHeight:I

    iget v9, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekHeight:I

    add-int v2, v8, v9

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingTop()I

    move-result v8

    sub-int v6, p2, v8

    if-lt v6, v2, :cond_20

    iget v8, p0, Landroid/widget/SimpleMonthView;->mPaddedHeight:I

    if-lt v6, v8, :cond_21

    :cond_20
    return v10

    :cond_21
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->isLayoutRtl()Z

    move-result v8

    if-eqz v8, :cond_4a

    iget v8, p0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    sub-int v5, v8, v4

    :goto_2b
    sub-int v8, v6, v2

    iget v9, p0, Landroid/widget/SimpleMonthView;->mDayHeight:I

    div-int v7, v8, v9

    mul-int/lit8 v8, v5, 0x7

    iget v9, p0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    div-int v0, v8, v9

    mul-int/lit8 v8, v7, 0x7

    add-int v3, v0, v8

    add-int/lit8 v8, v3, 0x1

    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->findDayOffset()I

    move-result v9

    sub-int v1, v8, v9

    invoke-direct {p0, v1}, Landroid/widget/SimpleMonthView;->isValidDayOfMonth(I)Z

    move-result v8

    if-nez v8, :cond_4c

    return v10

    :cond_4a
    move v5, v4

    goto :goto_2b

    :cond_4c
    return v1
.end method

.method private static getDaysInMonth(II)I
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

.method private initPaints(Landroid/content/res/Resources;)V
    .registers 12

    const/4 v9, 0x0

    const/4 v8, 0x1

    const v6, 0x104018e

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x1040184

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v6, 0x1040185

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v6, 0x1050056

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const v6, 0x1050051

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v6, 0x1050053

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    invoke-virtual {v6, v8}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    int-to-float v7, v4

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    invoke-static {v5, v9}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    invoke-virtual {v6, v8}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    int-to-float v7, v0

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    invoke-static {v1, v9}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayHighlightPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    invoke-virtual {v6, v8}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    int-to-float v7, v2

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    invoke-static {v3, v9}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private isDayEnabled(I)Z
    .registers 4

    const/4 v0, 0x0

    iget v1, p0, Landroid/widget/SimpleMonthView;->mEnabledDayStart:I

    if-lt p1, v1, :cond_a

    iget v1, p0, Landroid/widget/SimpleMonthView;->mEnabledDayEnd:I

    if-gt p1, v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method private isFirstDayOfWeek(I)Z
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->findDayOffset()I

    move-result v0

    add-int v2, v0, p1

    add-int/lit8 v2, v2, -0x1

    rem-int/lit8 v2, v2, 0x7

    if-nez v2, :cond_e

    const/4 v1, 0x1

    :cond_e
    return v1
.end method

.method private isLastDayOfWeek(I)Z
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->findDayOffset()I

    move-result v0

    add-int v2, v0, p1

    rem-int/lit8 v2, v2, 0x7

    if-nez v2, :cond_c

    const/4 v1, 0x1

    :cond_c
    return v1
.end method

.method private isValidDayOfMonth(I)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lt p1, v0, :cond_9

    iget v2, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    if-gt p1, v2, :cond_9

    :goto_8
    return v0

    :cond_9
    move v0, v1

    goto :goto_8
.end method

.method private static isValidDayOfWeek(I)Z
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lt p0, v0, :cond_8

    const/4 v2, 0x7

    if-gt p0, v2, :cond_8

    :goto_7
    return v0

    :cond_8
    move v0, v1

    goto :goto_7
.end method

.method private static isValidMonth(I)Z
    .registers 3

    const/4 v0, 0x0

    if-ltz p0, :cond_8

    const/16 v1, 0xb

    if-gt p0, v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method private moveOneDay(Z)Z
    .registers 5

    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->ensureFocusedDay()V

    const/4 v0, 0x0

    if-eqz p1, :cond_1c

    iget v1, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    invoke-direct {p0, v1}, Landroid/widget/SimpleMonthView;->isLastDayOfWeek(I)Z

    move-result v1

    if-nez v1, :cond_1b

    iget v1, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    iget v2, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    if-ge v1, v2, :cond_1b

    iget v1, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    const/4 v0, 0x1

    :cond_1b
    :goto_1b
    return v0

    :cond_1c
    iget v1, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    invoke-direct {p0, v1}, Landroid/widget/SimpleMonthView;->isFirstDayOfWeek(I)Z

    move-result v1

    if-nez v1, :cond_1b

    iget v1, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_1b

    iget v1, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    const/4 v0, 0x1

    goto :goto_1b
.end method

.method private onDayClicked(I)Z
    .registers 6

    const/4 v3, 0x1

    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->isValidDayOfMonth(I)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->isDayEnabled(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_11

    :cond_f
    const/4 v1, 0x0

    return v1

    :cond_11
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mOnDayClickListener:Landroid/widget/SimpleMonthView$OnDayClickListener;

    if-eqz v1, :cond_25

    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v0

    iget v1, p0, Landroid/widget/SimpleMonthView;->mYear:I

    iget v2, p0, Landroid/widget/SimpleMonthView;->mMonth:I

    invoke-virtual {v0, v1, v2, p1}, Landroid/icu/util/Calendar;->set(III)V

    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mOnDayClickListener:Landroid/widget/SimpleMonthView$OnDayClickListener;

    invoke-interface {v1, p0, v0}, Landroid/widget/SimpleMonthView$OnDayClickListener;->onDayClick(Landroid/widget/SimpleMonthView;Landroid/icu/util/Calendar;)V

    :cond_25
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v1, p1, v3}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->sendEventForVirtualView(II)Z

    return v3
.end method

.method private sameDay(ILandroid/icu/util/Calendar;)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Landroid/widget/SimpleMonthView;->mYear:I

    invoke-virtual {p2, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_1d

    iget v2, p0, Landroid/widget/SimpleMonthView;->mMonth:I

    const/4 v3, 0x2

    invoke-virtual {p2, v3}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_1d

    const/4 v2, 0x5

    invoke-virtual {p2, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    if-ne p1, v2, :cond_1b

    :goto_1a
    return v0

    :cond_1b
    move v0, v1

    goto :goto_1a

    :cond_1d
    move v0, v1

    goto :goto_1a
.end method

.method private updateDayOfWeekLabels()V
    .registers 5

    iget-object v2, p0, Landroid/widget/SimpleMonthView;->mLocale:Ljava/util/Locale;

    invoke-static {v2}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v2

    iget-object v1, v2, Llibcore/icu/LocaleData;->tinyWeekdayNames:[Ljava/lang/String;

    const/4 v0, 0x0

    :goto_9
    const/4 v2, 0x7

    if-ge v0, v2, :cond_1e

    iget-object v2, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekLabels:[Ljava/lang/String;

    iget v3, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    rem-int/lit8 v3, v3, 0x7

    add-int/lit8 v3, v3, 0x1

    aget-object v3, v1, v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_1e
    return-void
.end method

.method private updateMonthYearLabel()V
    .registers 5

    iget-object v2, p0, Landroid/widget/SimpleMonthView;->mLocale:Ljava/util/Locale;

    const-string/jumbo v3, "MMMMy"

    invoke-static {v2, v3}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/icu/text/SimpleDateFormat;

    iget-object v2, p0, Landroid/widget/SimpleMonthView;->mLocale:Ljava/util/Locale;

    invoke-direct {v1, v0, v2}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sget-object v2, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_STANDALONE:Landroid/icu/text/DisplayContext;

    invoke-virtual {v1, v2}, Landroid/icu/text/SimpleDateFormat;->setContext(Landroid/icu/text/DisplayContext;)V

    iget-object v2, p0, Landroid/widget/SimpleMonthView;->mCalendar:Landroid/icu/util/Calendar;

    invoke-virtual {v2}, Landroid/icu/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/icu/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/SimpleMonthView;->mMonthYearLabel:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v0, p1}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x1

    goto :goto_c
.end method

.method public getBoundsForDay(ILandroid/graphics/Rect;)Z
    .registers 13

    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->isValidDayOfMonth(I)Z

    move-result v8

    if-nez v8, :cond_8

    const/4 v8, 0x0

    return v8

    :cond_8
    add-int/lit8 v8, p1, -0x1

    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->findDayOffset()I

    move-result v9

    add-int v3, v8, v9

    rem-int/lit8 v0, v3, 0x7

    iget v1, p0, Landroid/widget/SimpleMonthView;->mCellWidth:I

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->isLayoutRtl()Z

    move-result v8

    if-eqz v8, :cond_44

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    add-int/lit8 v9, v0, 0x1

    mul-int/2addr v9, v1

    sub-int v4, v8, v9

    :goto_28
    div-int/lit8 v5, v3, 0x7

    iget v6, p0, Landroid/widget/SimpleMonthView;->mDayHeight:I

    iget v8, p0, Landroid/widget/SimpleMonthView;->mMonthHeight:I

    iget v9, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekHeight:I

    add-int v2, v8, v9

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingTop()I

    move-result v8

    add-int/2addr v8, v2

    mul-int v9, v5, v6

    add-int v7, v8, v9

    add-int v8, v4, v1

    add-int v9, v7, v6

    invoke-virtual {p2, v4, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v8, 0x1

    return v8

    :cond_44
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingLeft()I

    move-result v8

    mul-int v9, v0, v1

    add-int v4, v8, v9

    goto :goto_28
.end method

.method public getCellWidth()I
    .registers 2

    iget v0, p0, Landroid/widget/SimpleMonthView;->mCellWidth:I

    return v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .registers 3

    iget v0, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    if-lez v0, :cond_a

    iget v0, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    invoke-virtual {p0, v0, p1}, Landroid/widget/SimpleMonthView;->getBoundsForDay(ILandroid/graphics/Rect;)Z

    :goto_9
    return-void

    :cond_a
    invoke-super {p0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    goto :goto_9
.end method

.method public getMonthHeight()I
    .registers 2

    iget v0, p0, Landroid/widget/SimpleMonthView;->mMonthHeight:I

    return v0
.end method

.method public getMonthYearLabel()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mMonthYearLabel:Ljava/lang/String;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 6

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingTop()I

    move-result v1

    int-to-float v2, v0

    int-to-float v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->drawMonth(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->drawDaysOfWeek(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->drawDays(Landroid/graphics/Canvas;)V

    neg-int v2, v0

    int-to-float v2, v2

    neg-int v3, v1

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 11

    const/4 v5, 0x1

    if-eqz p1, :cond_10

    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->findDayOffset()I

    move-result v3

    sparse-switch p2, :sswitch_data_5e

    :goto_a
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->ensureFocusedDay()V

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    :cond_10
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    return-void

    :sswitch_14
    invoke-direct {p0, p3}, Landroid/widget/SimpleMonthView;->findClosestRow(Landroid/graphics/Rect;)I

    move-result v4

    if-nez v4, :cond_1d

    :goto_1a
    iput v5, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    goto :goto_a

    :cond_1d
    mul-int/lit8 v5, v4, 0x7

    sub-int/2addr v5, v3

    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    :sswitch_23
    invoke-direct {p0, p3}, Landroid/widget/SimpleMonthView;->findClosestRow(Landroid/graphics/Rect;)I

    move-result v5

    add-int/lit8 v4, v5, 0x1

    iget v5, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    mul-int/lit8 v6, v4, 0x7

    sub-int/2addr v6, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    goto :goto_a

    :sswitch_35
    invoke-direct {p0, p3}, Landroid/widget/SimpleMonthView;->findClosestColumn(Landroid/graphics/Rect;)I

    move-result v0

    sub-int v6, v0, v3

    add-int/lit8 v1, v6, 0x1

    if-ge v1, v5, :cond_41

    add-int/lit8 v1, v1, 0x7

    :cond_41
    iput v1, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    goto :goto_a

    :sswitch_44
    invoke-direct {p0, p3}, Landroid/widget/SimpleMonthView;->findClosestColumn(Landroid/graphics/Rect;)I

    move-result v0

    iget v5, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    add-int/2addr v5, v3

    div-int/lit8 v2, v5, 0x7

    sub-int v5, v0, v3

    mul-int/lit8 v6, v2, 0x7

    add-int/2addr v5, v6

    add-int/lit8 v1, v5, 0x1

    iget v5, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    if-le v1, v5, :cond_5a

    add-int/lit8 v1, v1, -0x7

    :cond_5a
    iput v1, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    goto :goto_a

    nop

    :sswitch_data_5e
    .sparse-switch
        0x11 -> :sswitch_23
        0x21 -> :sswitch_44
        0x42 -> :sswitch_14
        0x82 -> :sswitch_35
    .end sparse-switch
.end method

.method protected onFocusLost()V
    .registers 2

    iget-boolean v0, p0, Landroid/widget/SimpleMonthView;->mIsTouchHighlighted:Z

    if-nez v0, :cond_e

    iget v0, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    iput v0, p0, Landroid/widget/SimpleMonthView;->mPreviouslyHighlightedDay:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    :cond_e
    invoke-super {p0}, Landroid/view/View;->onFocusLost()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 10

    const/4 v6, 0x1

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_9a

    :cond_9
    :goto_9
    if-eqz v1, :cond_94

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    return v6

    :sswitch_f
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->isLayoutRtl()Z

    move-result v4

    invoke-direct {p0, v4}, Landroid/widget/SimpleMonthView;->moveOneDay(Z)Z

    move-result v1

    goto :goto_9

    :sswitch_1e
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->isLayoutRtl()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-direct {p0, v4}, Landroid/widget/SimpleMonthView;->moveOneDay(Z)Z

    move-result v1

    goto :goto_9

    :sswitch_2f
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->ensureFocusedDay()V

    iget v4, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    const/4 v5, 0x7

    if-le v4, v5, :cond_9

    iget v4, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    add-int/lit8 v4, v4, -0x7

    iput v4, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    const/4 v1, 0x1

    goto :goto_9

    :sswitch_45
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->ensureFocusedDay()V

    iget v4, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    iget v5, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    add-int/lit8 v5, v5, -0x7

    if-gt v4, v5, :cond_9

    iget v4, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    add-int/lit8 v4, v4, 0x7

    iput v4, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    const/4 v1, 0x1

    goto :goto_9

    :sswitch_5e
    iget v4, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_9

    iget v4, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    invoke-direct {p0, v4}, Landroid/widget/SimpleMonthView;->onDayClicked(I)Z

    return v6

    :sswitch_69
    const/4 v0, 0x0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_8c

    const/4 v0, 0x2

    :cond_71
    :goto_71
    if-eqz v0, :cond_9

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    move-object v2, p0

    :cond_78
    invoke-virtual {v2, v0}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_86

    if-eq v2, p0, :cond_86

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eq v4, v3, :cond_78

    :cond_86
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    return v6

    :cond_8c
    invoke-virtual {p2, v6}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_71

    const/4 v0, 0x1

    goto :goto_71

    :cond_94
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    return v4

    nop

    :sswitch_data_9a
    .sparse-switch
        0x13 -> :sswitch_2f
        0x14 -> :sswitch_45
        0x15 -> :sswitch_f
        0x16 -> :sswitch_1e
        0x17 -> :sswitch_5e
        0x3d -> :sswitch_69
        0x42 -> :sswitch_5e
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 26

    if-nez p1, :cond_3

    return-void

    :cond_3
    sub-int v17, p4, p2

    sub-int v3, p5, p3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SimpleMonthView;->getPaddingLeft()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SimpleMonthView;->getPaddingTop()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SimpleMonthView;->getPaddingRight()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SimpleMonthView;->getPaddingBottom()I

    move-result v12

    sub-int v10, v17, v14

    sub-int v8, v3, v12

    sub-int v11, v10, v13

    sub-int v9, v8, v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-eq v11, v0, :cond_33

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleMonthView;->mPaddedHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v9, v0, :cond_34

    :cond_33
    return-void

    :cond_34
    move-object/from16 v0, p0

    iput v11, v0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    move-object/from16 v0, p0

    iput v9, v0, Landroid/widget/SimpleMonthView;->mPaddedHeight:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SimpleMonthView;->getMeasuredHeight()I

    move-result v18

    sub-int v18, v18, v15

    sub-int v6, v18, v12

    int-to-float v0, v9

    move/from16 v18, v0

    int-to-float v0, v6

    move/from16 v19, v0

    div-float v16, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleMonthView;->mDesiredMonthHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v16

    move/from16 v0, v18

    float-to-int v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    move/from16 v18, v0

    div-int/lit8 v2, v18, 0x7

    move-object/from16 v0, p0

    iput v7, v0, Landroid/widget/SimpleMonthView;->mMonthHeight:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleMonthView;->mDesiredDayOfWeekHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v16

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SimpleMonthView;->mDayOfWeekHeight:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleMonthView;->mDesiredDayHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v16

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SimpleMonthView;->mDayHeight:I

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/SimpleMonthView;->mCellWidth:I

    div-int/lit8 v18, v2, 0x2

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v19

    add-int v5, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleMonthView;->mDayHeight:I

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x2

    add-int v4, v18, v12

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleMonthView;->mDesiredDaySelectorRadius:I

    move/from16 v18, v0

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v19

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SimpleMonthView;->mDaySelectorRadius:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->invalidateRoot()V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 9

    iget v4, p0, Landroid/widget/SimpleMonthView;->mDesiredDayHeight:I

    mul-int/lit8 v4, v4, 0x6

    iget v5, p0, Landroid/widget/SimpleMonthView;->mDesiredDayOfWeekHeight:I

    add-int/2addr v4, v5

    iget v5, p0, Landroid/widget/SimpleMonthView;->mDesiredMonthHeight:I

    add-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingBottom()I

    move-result v5

    add-int v0, v4, v5

    iget v4, p0, Landroid/widget/SimpleMonthView;->mDesiredCellWidth:I

    mul-int/lit8 v4, v4, 0x7

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingStart()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingEnd()I

    move-result v5

    add-int v1, v4, v5

    invoke-static {v1, p1}, Landroid/widget/SimpleMonthView;->resolveSize(II)I

    move-result v3

    invoke-static {v0, p2}, Landroid/widget/SimpleMonthView;->resolveSize(II)I

    move-result v2

    invoke-virtual {p0, v3, v2}, Landroid/widget/SimpleMonthView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .registers 8

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_a

    const/4 v3, 0x0

    return-object v3

    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    add-float/2addr v3, v4

    float-to-int v1, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    add-float/2addr v3, v4

    float-to-int v2, v3

    invoke-direct {p0, v1, v2}, Landroid/widget/SimpleMonthView;->getDayAtLocation(II)I

    move-result v0

    if-ltz v0, :cond_27

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x3ea

    invoke-static {v3, v4}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v3

    return-object v3

    :cond_27
    invoke-super {p0, p1, p2}, Landroid/view/View;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object v3

    return-object v3
.end method

.method public onRtlPropertiesChanged(I)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->requestLayout()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 11

    const/4 v8, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    add-float/2addr v5, v7

    float-to-int v3, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    add-float/2addr v5, v7

    float-to-int v4, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_3e

    :cond_17
    :goto_17
    return v8

    :pswitch_18
    invoke-direct {p0, v3, v4}, Landroid/widget/SimpleMonthView;->getDayAtLocation(II)I

    move-result v2

    iput-boolean v8, p0, Landroid/widget/SimpleMonthView;->mIsTouchHighlighted:Z

    iget v5, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    if-eq v5, v2, :cond_29

    iput v2, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    iput v2, p0, Landroid/widget/SimpleMonthView;->mPreviouslyHighlightedDay:I

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    :cond_29
    if-nez v0, :cond_17

    if-gez v2, :cond_17

    return v6

    :pswitch_2e
    invoke-direct {p0, v3, v4}, Landroid/widget/SimpleMonthView;->getDayAtLocation(II)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/SimpleMonthView;->onDayClicked(I)Z

    :pswitch_35
    const/4 v5, -0x1

    iput v5, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    iput-boolean v6, p0, Landroid/widget/SimpleMonthView;->mIsTouchHighlighted:Z

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    goto :goto_17

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_18
        :pswitch_2e
        :pswitch_18
        :pswitch_35
    .end packed-switch
.end method

.method setDayHighlightColor(Landroid/content/res/ColorStateList;)V
    .registers 5

    const/16 v1, 0x18

    invoke-static {v1}, Landroid/util/StateSet;->get(I)[I

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mDayHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    return-void
.end method

.method public setDayOfWeekTextAppearance(I)V
    .registers 3

    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v0, p1}, Landroid/widget/SimpleMonthView;->applyTextAppearance(Landroid/graphics/Paint;I)Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    return-void
.end method

.method setDayOfWeekTextColor(Landroid/content/res/ColorStateList;)V
    .registers 5

    sget-object v1, Landroid/widget/SimpleMonthView;->ENABLED_STATE_SET:[I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setColor(I)V

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    return-void
.end method

.method setDaySelectorColor(Landroid/content/res/ColorStateList;)V
    .registers 5

    const/16 v1, 0x28

    invoke-static {v1}, Landroid/util/StateSet;->get(I)[I

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    const/16 v2, 0xb0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    return-void
.end method

.method public setDayTextAppearance(I)V
    .registers 4

    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v1, p1}, Landroid/widget/SimpleMonthView;->applyTextAppearance(Landroid/graphics/Paint;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_a

    iput-object v0, p0, Landroid/widget/SimpleMonthView;->mDayTextColor:Landroid/content/res/ColorStateList;

    :cond_a
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    return-void
.end method

.method setDayTextColor(Landroid/content/res/ColorStateList;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/SimpleMonthView;->mDayTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .registers 3

    invoke-static {p1}, Landroid/widget/SimpleMonthView;->isValidDayOfWeek(I)Z

    move-result v0

    if-eqz v0, :cond_14

    iput p1, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    :goto_8
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->updateDayOfWeekLabels()V

    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v0}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->invalidateRoot()V

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    return-void

    :cond_14
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mCalendar:Landroid/icu/util/Calendar;

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    iput v0, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    goto :goto_8
.end method

.method setMonthParams(IIIIII)V
    .registers 14

    const/4 v6, 0x1

    iput p1, p0, Landroid/widget/SimpleMonthView;->mActivatedDay:I

    invoke-static {p2}, Landroid/widget/SimpleMonthView;->isValidMonth(I)Z

    move-result v3

    if-eqz v3, :cond_b

    iput p2, p0, Landroid/widget/SimpleMonthView;->mMonth:I

    :cond_b
    iput p3, p0, Landroid/widget/SimpleMonthView;->mYear:I

    iget-object v3, p0, Landroid/widget/SimpleMonthView;->mCalendar:Landroid/icu/util/Calendar;

    iget v4, p0, Landroid/widget/SimpleMonthView;->mMonth:I

    const/4 v5, 0x2

    invoke-virtual {v3, v5, v4}, Landroid/icu/util/Calendar;->set(II)V

    iget-object v3, p0, Landroid/widget/SimpleMonthView;->mCalendar:Landroid/icu/util/Calendar;

    iget v4, p0, Landroid/widget/SimpleMonthView;->mYear:I

    invoke-virtual {v3, v6, v4}, Landroid/icu/util/Calendar;->set(II)V

    iget-object v3, p0, Landroid/widget/SimpleMonthView;->mCalendar:Landroid/icu/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v3, v4, v6}, Landroid/icu/util/Calendar;->set(II)V

    iget-object v3, p0, Landroid/widget/SimpleMonthView;->mCalendar:Landroid/icu/util/Calendar;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    iput v3, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekStart:I

    invoke-static {p4}, Landroid/widget/SimpleMonthView;->isValidDayOfWeek(I)Z

    move-result v3

    if-eqz v3, :cond_56

    iput p4, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    :goto_33
    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v2

    const/4 v3, -0x1

    iput v3, p0, Landroid/widget/SimpleMonthView;->mToday:I

    iget v3, p0, Landroid/widget/SimpleMonthView;->mMonth:I

    iget v4, p0, Landroid/widget/SimpleMonthView;->mYear:I

    invoke-static {v3, v4}, Landroid/widget/SimpleMonthView;->getDaysInMonth(II)I

    move-result v3

    iput v3, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    const/4 v1, 0x0

    :goto_45
    iget v3, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    if-ge v1, v3, :cond_5f

    add-int/lit8 v0, v1, 0x1

    invoke-direct {p0, v0, v2}, Landroid/widget/SimpleMonthView;->sameDay(ILandroid/icu/util/Calendar;)Z

    move-result v3

    if-eqz v3, :cond_53

    iput v0, p0, Landroid/widget/SimpleMonthView;->mToday:I

    :cond_53
    add-int/lit8 v1, v1, 0x1

    goto :goto_45

    :cond_56
    iget-object v3, p0, Landroid/widget/SimpleMonthView;->mCalendar:Landroid/icu/util/Calendar;

    invoke-virtual {v3}, Landroid/icu/util/Calendar;->getFirstDayOfWeek()I

    move-result v3

    iput v3, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    goto :goto_33

    :cond_5f
    iget v3, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    invoke-static {p5, v6, v3}, Landroid/util/MathUtils;->constrain(III)I

    move-result v3

    iput v3, p0, Landroid/widget/SimpleMonthView;->mEnabledDayStart:I

    iget v3, p0, Landroid/widget/SimpleMonthView;->mEnabledDayStart:I

    iget v4, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    invoke-static {p6, v3, v4}, Landroid/util/MathUtils;->constrain(III)I

    move-result v3

    iput v3, p0, Landroid/widget/SimpleMonthView;->mEnabledDayEnd:I

    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->updateMonthYearLabel()V

    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->updateDayOfWeekLabels()V

    iget-object v3, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v3}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->invalidateRoot()V

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    return-void
.end method

.method public setMonthTextAppearance(I)V
    .registers 3

    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v0, p1}, Landroid/widget/SimpleMonthView;->applyTextAppearance(Landroid/graphics/Paint;I)Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    return-void
.end method

.method setMonthTextColor(Landroid/content/res/ColorStateList;)V
    .registers 5

    sget-object v1, Landroid/widget/SimpleMonthView;->ENABLED_STATE_SET:[I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setColor(I)V

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    return-void
.end method

.method public setOnDayClickListener(Landroid/widget/SimpleMonthView$OnDayClickListener;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/SimpleMonthView;->mOnDayClickListener:Landroid/widget/SimpleMonthView$OnDayClickListener;

    return-void
.end method

.method public setSelectedDay(I)V
    .registers 3

    iput p1, p0, Landroid/widget/SimpleMonthView;->mActivatedDay:I

    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v0}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->invalidateRoot()V

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    return-void
.end method
