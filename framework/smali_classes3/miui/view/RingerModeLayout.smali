.class public Lmiui/view/RingerModeLayout;
.super Landroid/widget/LinearLayout;
.source "RingerModeLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/view/RingerModeLayout$1;,
        Lmiui/view/RingerModeLayout$2;,
        Lmiui/view/RingerModeLayout$3;,
        Lmiui/view/RingerModeLayout$4;,
        Lmiui/view/RingerModeLayout$5;,
        Lmiui/view/RingerModeLayout$H;,
        Lmiui/view/RingerModeLayout$SilenceModeObserver;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "RingerModeLayout"


# instance fields
.field private ContentHeight:I

.field private mAnimating:Z

.field private final mContext:Landroid/content/Context;

.field private mCurrentMode:I

.field private mDialogView:Landroid/view/ViewGroup;

.field private mHandler:Lmiui/view/RingerModeLayout$H;

.field private mHelpBtn:Landroid/widget/ImageView;

.field private mHelpButtonListener:Landroid/view/View$OnClickListener;

.field private mLooper:Landroid/os/Looper;

.field private mOrignalMode:I

.field private mOrignalRemain:J

.field private mRadioButtonListener:Landroid/view/View$OnClickListener;

.field private mRadioGroup:Landroid/widget/RadioGroup;

.field private mRemainTextShown:Z

.field private mRemainTime_1:Landroid/widget/TextView;

.field private mRemainTime_2:Landroid/widget/TextView;

.field private mSelectedText:Landroid/widget/TextView;

.field private mShowing:Z

.field private mSilenceButtonChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mSilenceModeContent:Landroid/widget/RelativeLayout;

.field private mSilenceModeExpandContent:Landroid/widget/LinearLayout;

.field public mSilenceModeExpanded:Z

.field private final mSilenceModeObserver:Lmiui/view/RingerModeLayout$SilenceModeObserver;

.field private mSilenceModeTitle:Landroid/widget/TextView;

.field private mSlidingButton:Lmiui/widget/SlidingButton;

.field private mStandardBtn:Landroid/widget/RadioButton;

.field private mTimeLabel:Landroid/widget/RelativeLayout;

.field private mTimeLabelListener:Landroid/view/View$OnClickListener;

.field private mTimeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mTimeSeekBarChangedListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mTimeSeekbar:Lmiui/widget/SeekBar;

.field private mTotalBtn:Landroid/widget/RadioButton;

.field private mVolumeDialog:Lmiui/view/VolumeDialog;


# direct methods
.method static synthetic -get0(Lmiui/view/RingerModeLayout;)Z
    .registers 2

    iget-boolean v0, p0, Lmiui/view/RingerModeLayout;->mAnimating:Z

    return v0
.end method

.method static synthetic -get1(Lmiui/view/RingerModeLayout;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lmiui/view/RingerModeLayout;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get10(Lmiui/view/RingerModeLayout;)Z
    .registers 2

    iget-boolean v0, p0, Lmiui/view/RingerModeLayout;->mShowing:Z

    return v0
.end method

.method static synthetic -get11(Lmiui/view/RingerModeLayout;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lmiui/view/RingerModeLayout;->mSilenceModeExpandContent:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get12(Lmiui/view/RingerModeLayout;)Lmiui/widget/SlidingButton;
    .registers 2

    iget-object v0, p0, Lmiui/view/RingerModeLayout;->mSlidingButton:Lmiui/widget/SlidingButton;

    return-object v0
.end method

.method static synthetic -get13(Lmiui/view/RingerModeLayout;)Landroid/widget/RelativeLayout;
    .registers 2

    iget-object v0, p0, Lmiui/view/RingerModeLayout;->mTimeLabel:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic -get14(Lmiui/view/RingerModeLayout;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lmiui/view/RingerModeLayout;->mTimeList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get15(Lmiui/view/RingerModeLayout;)Lmiui/widget/SeekBar;
    .registers 2

    iget-object v0, p0, Lmiui/view/RingerModeLayout;->mTimeSeekbar:Lmiui/widget/SeekBar;

    return-object v0
.end method

.method static synthetic -get16(Lmiui/view/RingerModeLayout;)Lmiui/view/VolumeDialog;
    .registers 2

    iget-object v0, p0, Lmiui/view/RingerModeLayout;->mVolumeDialog:Lmiui/view/VolumeDialog;

    return-object v0
.end method

.method static synthetic -get2(Lmiui/view/RingerModeLayout;)I
    .registers 2

    iget v0, p0, Lmiui/view/RingerModeLayout;->mCurrentMode:I

    return v0
.end method

.method static synthetic -get3(Lmiui/view/RingerModeLayout;)Landroid/view/ViewGroup;
    .registers 2

    iget-object v0, p0, Lmiui/view/RingerModeLayout;->mDialogView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic -get4(Lmiui/view/RingerModeLayout;)Lmiui/view/RingerModeLayout$H;
    .registers 2

    iget-object v0, p0, Lmiui/view/RingerModeLayout;->mHandler:Lmiui/view/RingerModeLayout$H;

    return-object v0
.end method

.method static synthetic -get5(Lmiui/view/RingerModeLayout;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lmiui/view/RingerModeLayout;->mHelpBtn:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get6(Lmiui/view/RingerModeLayout;)Landroid/widget/RadioGroup;
    .registers 2

    iget-object v0, p0, Lmiui/view/RingerModeLayout;->mRadioGroup:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method static synthetic -get7(Lmiui/view/RingerModeLayout;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lmiui/view/RingerModeLayout;->mRemainTime_1:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get8(Lmiui/view/RingerModeLayout;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lmiui/view/RingerModeLayout;->mRemainTime_2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get9(Lmiui/view/RingerModeLayout;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lmiui/view/RingerModeLayout;->mSelectedText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -set0(Lmiui/view/RingerModeLayout;Z)Z
    .registers 2

    iput-boolean p1, p0, Lmiui/view/RingerModeLayout;->mAnimating:Z

    return p1
.end method

.method static synthetic -set1(Lmiui/view/RingerModeLayout;I)I
    .registers 2

    iput p1, p0, Lmiui/view/RingerModeLayout;->mCurrentMode:I

    return p1
.end method

.method static synthetic -set2(Lmiui/view/RingerModeLayout;Landroid/widget/TextView;)Landroid/widget/TextView;
    .registers 2

    iput-object p1, p0, Lmiui/view/RingerModeLayout;->mSelectedText:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic -wrap0(Lmiui/view/RingerModeLayout;)Z
    .registers 2

    invoke-direct {p0}, Lmiui/view/RingerModeLayout;->isSilenceModeEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lmiui/view/RingerModeLayout;I)I
    .registers 3

    invoke-direct {p0, p1}, Lmiui/view/RingerModeLayout;->getProgressLevel(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lmiui/view/RingerModeLayout;I)I
    .registers 3

    invoke-direct {p0, p1}, Lmiui/view/RingerModeLayout;->progressToMinute(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lmiui/view/RingerModeLayout;)V
    .registers 1

    invoke-direct {p0}, Lmiui/view/RingerModeLayout;->updateRadioGroup()V

    return-void
.end method

.method static synthetic -wrap4(Lmiui/view/RingerModeLayout;)V
    .registers 1

    invoke-direct {p0}, Lmiui/view/RingerModeLayout;->updateRemainTimeSeekbar()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lmiui/view/RingerModeLayout$SilenceModeObserver;

    invoke-direct {v0, p0}, Lmiui/view/RingerModeLayout$SilenceModeObserver;-><init>(Lmiui/view/RingerModeLayout;)V

    iput-object v0, p0, Lmiui/view/RingerModeLayout;->mSilenceModeObserver:Lmiui/view/RingerModeLayout$SilenceModeObserver;

    new-instance v0, Lmiui/view/RingerModeLayout$1;

    invoke-direct {v0, p0}, Lmiui/view/RingerModeLayout$1;-><init>(Lmiui/view/RingerModeLayout;)V

    iput-object v0, p0, Lmiui/view/RingerModeLayout;->mSilenceButtonChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    new-instance v0, Lmiui/view/RingerModeLayout$2;

    invoke-direct {v0, p0}, Lmiui/view/RingerModeLayout$2;-><init>(Lmiui/view/RingerModeLayout;)V

    iput-object v0, p0, Lmiui/view/RingerModeLayout;->mTimeSeekBarChangedListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    new-instance v0, Lmiui/view/RingerModeLayout$3;

    invoke-direct {v0, p0}, Lmiui/view/RingerModeLayout$3;-><init>(Lmiui/view/RingerModeLayout;)V

    iput-object v0, p0, Lmiui/view/RingerModeLayout;->mRadioButtonListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lmiui/view/RingerModeLayout$4;

    invoke-direct {v0, p0}, Lmiui/view/RingerModeLayout$4;-><init>(Lmiui/view/RingerModeLayout;)V

    iput-object v0, p0, Lmiui/view/RingerModeLayout;->mHelpButtonListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lmiui/view/RingerModeLayout$5;

    invoke-direct {v0, p0}, Lmiui/view/RingerModeLayout$5;-><init>(Lmiui/view/RingerModeLayout;)V

    iput-object v0, p0, Lmiui/view/RingerModeLayout;->mTimeLabelListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lmiui/view/RingerModeLayout;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lmiui/view/RingerModeLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/ExtraNotificationManager;->getRemainTime(Landroid/content/Context;)J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/view/RingerModeLayout;->mOrignalRemain:J

    iget-object v0, p0, Lmiui/view/RingerModeLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/ExtraNotificationManager;->getZenMode(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lmiui/view/RingerModeLayout;->mOrignalMode:I

    return-void
.end method

.method private changeSilenceModeTitle(Z)V
    .registers 5

    if-eqz p1, :cond_14

    iget v1, p0, Lmiui/view/RingerModeLayout;->mCurrentMode:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_10

    const v0, 0x110900da

    :goto_a
    iget-object v1, p0, Lmiui/view/RingerModeLayout;->mSilenceModeTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    :goto_f
    return-void

    :cond_10
    const v0, 0x110900db

    goto :goto_a

    :cond_14
    iget-object v1, p0, Lmiui/view/RingerModeLayout;->mSilenceModeTitle:Landroid/widget/TextView;

    const v2, 0x110900d7

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_f
.end method

.method private getProgressLevel(I)I
    .registers 6

    const/16 v3, 0xc

    move v0, p1

    if-gt p1, v3, :cond_7

    const/4 v1, 0x0

    :goto_6
    return v1

    :cond_7
    add-int/lit8 v2, p1, -0x19

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-gt v2, v3, :cond_11

    const/4 v1, 0x1

    goto :goto_6

    :cond_11
    add-int/lit8 v2, p1, -0x32

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-gt v2, v3, :cond_1b

    const/4 v1, 0x2

    goto :goto_6

    :cond_1b
    add-int/lit8 v2, p1, -0x4b

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-gt v2, v3, :cond_25

    const/4 v1, 0x3

    goto :goto_6

    :cond_25
    const/4 v1, 0x4

    goto :goto_6
.end method

.method private getXPosition(Lmiui/widget/SeekBar;)I
    .registers 8

    iget-object v4, p0, Lmiui/view/RingerModeLayout;->mRemainTime_2:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    iget-object v5, p0, Lmiui/view/RingerModeLayout;->mRemainTime_2:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {p1}, Lmiui/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v4}, Landroid/widget/LinearLayout$LayoutParams;->getMarginStart()I

    move-result v4

    int-to-float v0, v4

    invoke-virtual {p1}, Lmiui/widget/SeekBar;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p1}, Lmiui/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v3, v4

    invoke-virtual {p1}, Lmiui/widget/SeekBar;->getProgress()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    invoke-virtual {p1}, Lmiui/widget/SeekBar;->getMax()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {p1}, Lmiui/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v2, v5

    sub-float/2addr v4, v5

    add-float v1, v4, v0

    float-to-int v4, v1

    return v4
.end method

.method private isSilenceModeEnabled()Z
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Lmiui/view/RingerModeLayout;->mCurrentMode:I

    if-lez v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method private progressToMinute(I)I
    .registers 4

    const/4 v0, 0x0

    const/16 v1, 0x32

    if-gt p1, v1, :cond_a

    div-int/lit8 v1, p1, 0x19

    mul-int/lit8 v0, v1, 0x1e

    :cond_9
    :goto_9
    return v0

    :cond_a
    const/16 v1, 0x4b

    if-gt p1, v1, :cond_11

    const/16 v0, 0x78

    goto :goto_9

    :cond_11
    const/16 v1, 0x64

    if-gt p1, v1, :cond_9

    const/16 v0, 0x1e0

    goto :goto_9
.end method

.method private timeToMinute(J)I
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    const-wide/32 v0, 0x1b7740

    cmp-long v0, p1, v0

    if-gtz v0, :cond_12

    const/16 v0, 0x1e

    return v0

    :cond_12
    const-wide/32 v0, 0x36ee80

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1c

    const/16 v0, 0x3c

    return v0

    :cond_1c
    const-wide/32 v0, 0x6ddd00

    cmp-long v0, p1, v0

    if-gtz v0, :cond_26

    const/16 v0, 0x78

    return v0

    :cond_26
    const/16 v0, 0x1e0

    return v0
.end method

.method private timeToProgress(J)I
    .registers 10

    const-wide/16 v4, 0xe10

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v4

    if-gtz v2, :cond_e

    const-wide/16 v2, 0x48

    div-long v0, p1, v2

    :cond_c
    :goto_c
    long-to-int v2, v0

    return v2

    :cond_e
    const-wide/16 v2, 0x1c20

    cmp-long v2, p1, v2

    if-gtz v2, :cond_1e

    sub-long/2addr p1, v4

    const-wide/16 v2, 0x90

    div-long v2, p1, v2

    const-wide/16 v4, 0x32

    add-long v0, v2, v4

    goto :goto_c

    :cond_1e
    const-wide/16 v2, 0x7080

    cmp-long v2, p1, v2

    if-gtz v2, :cond_c

    sub-long/2addr p1, v4

    const-wide/16 v2, 0x360

    div-long v2, p1, v2

    const-wide/16 v4, 0x4b

    add-long v0, v2, v4

    goto :goto_c
.end method

.method private turnMillSecondsToHour(J)Ljava/lang/String;
    .registers 16

    const-wide/32 v10, 0x36ee80

    const v5, 0xea60

    const/16 v8, 0xa

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    div-long v6, p1, v10

    long-to-int v0, v6

    rem-long v6, p1, v10

    long-to-int v1, v6

    div-int v2, v1, v5

    rem-int/2addr v1, v5

    div-int/lit16 v3, v1, 0x3e8

    if-lez v0, :cond_2c

    if-ge v0, v8, :cond_22

    const-string/jumbo v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_22
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2c
    if-ge v2, v8, :cond_34

    const-string/jumbo v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_34
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge v3, v8, :cond_46

    const-string/jumbo v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_46
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private updateRadioGroup()V
    .registers 4

    invoke-direct {p0}, Lmiui/view/RingerModeLayout;->isSilenceModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-boolean v0, p0, Lmiui/view/RingerModeLayout;->mShowing:Z

    if-eqz v0, :cond_1b

    iget-object v1, p0, Lmiui/view/RingerModeLayout;->mRadioGroup:Landroid/widget/RadioGroup;

    iget v0, p0, Lmiui/view/RingerModeLayout;->mCurrentMode:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1c

    const v0, 0x110c0040

    :goto_14
    invoke-virtual {v1, v0}, Landroid/widget/RadioGroup;->check(I)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmiui/view/RingerModeLayout;->changeSilenceModeTitle(Z)V

    :cond_1b
    return-void

    :cond_1c
    const v0, 0x110c0041

    goto :goto_14
.end method

.method private updateRemainText(Z)V
    .registers 8

    iget-boolean v3, p0, Lmiui/view/RingerModeLayout;->mRemainTextShown:Z

    if-ne v3, p1, :cond_5

    return-void

    :cond_5
    const-string/jumbo v3, "RingerModeLayout"

    const-string/jumbo v4, "updateRemainText..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lmiui/view/RingerModeLayout;->mRemainTextShown:Z

    if-eqz p1, :cond_33

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_15
    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v1, v3, v4

    const/4 v4, 0x1

    aput v2, v3, v4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v3, Lmiui/view/RingerModeLayout$7;

    invoke-direct {v3, p0}, Lmiui/view/RingerModeLayout$7;-><init>(Lmiui/view/RingerModeLayout;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_33
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    goto :goto_15
.end method

.method private updateRemainTimeSeekbar()V
    .registers 13

    const-wide/16 v10, 0x3e8

    const/16 v6, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-boolean v1, p0, Lmiui/view/RingerModeLayout;->mShowing:Z

    if-nez v1, :cond_b

    return-void

    :cond_b
    iget-object v1, p0, Lmiui/view/RingerModeLayout;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/ExtraNotificationManager;->getRemainTime(Landroid/content/Context;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_79

    iget-object v1, p0, Lmiui/view/RingerModeLayout;->mTimeLabel:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v1, p0, Lmiui/view/RingerModeLayout;->mRemainTime_2:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-boolean v1, p0, Lmiui/view/RingerModeLayout;->mSilenceModeExpanded:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lmiui/view/RingerModeLayout;->updateRemainText(Z)V

    iget-object v1, p0, Lmiui/view/RingerModeLayout;->mTimeSeekbar:Lmiui/widget/SeekBar;

    div-long v4, v2, v10

    invoke-direct {p0, v4, v5}, Lmiui/view/RingerModeLayout;->timeToProgress(J)I

    move-result v4

    invoke-virtual {v1, v4}, Lmiui/widget/SeekBar;->setProgress(I)V

    iget-object v1, p0, Lmiui/view/RingerModeLayout;->mRemainTime_1:Landroid/widget/TextView;

    iget-object v4, p0, Lmiui/view/RingerModeLayout;->mContext:Landroid/content/Context;

    new-array v5, v8, [Ljava/lang/Object;

    invoke-direct {p0, v2, v3}, Lmiui/view/RingerModeLayout;->turnMillSecondsToHour(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    const v6, 0x110900e5

    invoke-virtual {v4, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lmiui/view/RingerModeLayout;->mRemainTime_2:Landroid/widget/TextView;

    invoke-direct {p0, v2, v3}, Lmiui/view/RingerModeLayout;->turnMillSecondsToHour(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lmiui/view/RingerModeLayout;->mRemainTime_2:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lmiui/view/RingerModeLayout;->mTimeSeekbar:Lmiui/widget/SeekBar;

    invoke-direct {p0, v1}, Lmiui/view/RingerModeLayout;->getXPosition(Lmiui/widget/SeekBar;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    iget-object v1, p0, Lmiui/view/RingerModeLayout;->mRemainTime_2:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lmiui/view/RingerModeLayout;->mHandler:Lmiui/view/RingerModeLayout$H;

    invoke-virtual {v1, v8}, Lmiui/view/RingerModeLayout$H;->removeMessages(I)V

    iget-object v1, p0, Lmiui/view/RingerModeLayout;->mHandler:Lmiui/view/RingerModeLayout$H;

    iget-object v4, p0, Lmiui/view/RingerModeLayout;->mHandler:Lmiui/view/RingerModeLayout$H;

    invoke-virtual {v4, v8}, Lmiui/view/RingerModeLayout$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v4, v10, v11}, Lmiui/view/RingerModeLayout$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_78
    return-void

    :cond_79
    iget-object v1, p0, Lmiui/view/RingerModeLayout;->mTimeLabel:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v1, p0, Lmiui/view/RingerModeLayout;->mRemainTime_2:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0, v7}, Lmiui/view/RingerModeLayout;->updateRemainText(Z)V

    iget-object v1, p0, Lmiui/view/RingerModeLayout;->mTimeSeekbar:Lmiui/widget/SeekBar;

    invoke-virtual {v1, v7}, Lmiui/widget/SeekBar;->setProgress(I)V

    goto :goto_78
.end method


# virtual methods
.method public cleanUp()V
    .registers 12

    const/4 v10, 0x0

    iget-object v5, p0, Lmiui/view/RingerModeLayout;->mHandler:Lmiui/view/RingerModeLayout$H;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lmiui/view/RingerModeLayout$H;->removeMessages(I)V

    iget-boolean v5, p0, Lmiui/view/RingerModeLayout;->mShowing:Z

    if-nez v5, :cond_c

    return-void

    :cond_c
    iget-object v5, p0, Lmiui/view/RingerModeLayout;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/app/ExtraNotificationManager;->getRemainTime(Landroid/content/Context;)J

    move-result-wide v2

    iget-object v5, p0, Lmiui/view/RingerModeLayout;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/app/ExtraNotificationManager;->getZenMode(Landroid/content/Context;)I

    move-result v0

    const/16 v4, 0x7530

    iget-wide v6, p0, Lmiui/view/RingerModeLayout;->mOrignalRemain:J

    sub-long/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/16 v8, 0x7530

    cmp-long v5, v6, v8

    if-gez v5, :cond_2b

    iget v5, p0, Lmiui/view/RingerModeLayout;->mOrignalMode:I

    if-eq v5, v0, :cond_41

    :cond_2b
    invoke-direct {p0, v2, v3}, Lmiui/view/RingerModeLayout;->timeToMinute(J)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "silence_DND"

    sget-object v6, Landroid/provider/MiuiSettings$SilenceMode;->MISTAT_RINGERMODE_LIST:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v5, v6, v1, v8, v9}, Landroid/provider/MiuiSettings$SilenceMode;->reportRingerModeInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_41
    const/4 v5, 0x0

    iput-boolean v5, p0, Lmiui/view/RingerModeLayout;->mShowing:Z

    iget-object v5, p0, Lmiui/view/RingerModeLayout;->mSilenceModeObserver:Lmiui/view/RingerModeLayout$SilenceModeObserver;

    invoke-virtual {v5}, Lmiui/view/RingerModeLayout$SilenceModeObserver;->unregister()V

    iput-object v10, p0, Lmiui/view/RingerModeLayout;->mTimeSeekbar:Lmiui/widget/SeekBar;

    iput-object v10, p0, Lmiui/view/RingerModeLayout;->mRemainTime_2:Landroid/widget/TextView;

    iput-object v10, p0, Lmiui/view/RingerModeLayout;->mRadioGroup:Landroid/widget/RadioGroup;

    iget-object v5, p0, Lmiui/view/RingerModeLayout;->mTimeList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    return-void
.end method

.method public expandSilenceModeContent(Z)V
    .registers 9

    const/4 v6, 0x1

    const/4 v4, 0x0

    iget-object v3, p0, Lmiui/view/RingerModeLayout;->mSilenceModeExpandContent:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_48

    iget-object v3, p0, Lmiui/view/RingerModeLayout;->mSilenceModeExpandContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    move-result v3

    :goto_c
    iput-boolean v3, p0, Lmiui/view/RingerModeLayout;->mAnimating:Z

    invoke-direct {p0}, Lmiui/view/RingerModeLayout;->isSilenceModeEnabled()Z

    move-result v3

    invoke-direct {p0, v3}, Lmiui/view/RingerModeLayout;->changeSilenceModeTitle(Z)V

    iget-boolean v3, p0, Lmiui/view/RingerModeLayout;->mSilenceModeExpanded:Z

    if-eq v3, p1, :cond_2b

    if-eqz p1, :cond_25

    iget-object v3, p0, Lmiui/view/RingerModeLayout;->mSlidingButton:Lmiui/widget/SlidingButton;

    invoke-virtual {v3}, Lmiui/widget/SlidingButton;->isChecked()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_2b

    :cond_25
    iget-boolean v3, p0, Lmiui/view/RingerModeLayout;->mAnimating:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_4a

    :cond_2b
    const-string/jumbo v3, "RingerModeLayout"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Silence mode content is alread "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lmiui/view/RingerModeLayout;->mAnimating:Z

    return-void

    :cond_48
    move v3, v4

    goto :goto_c

    :cond_4a
    iput-boolean p1, p0, Lmiui/view/RingerModeLayout;->mSilenceModeExpanded:Z

    if-eqz p1, :cond_87

    const/4 v1, 0x0

    iget v2, p0, Lmiui/view/RingerModeLayout;->ContentHeight:I

    :goto_51
    const/4 v3, 0x2

    new-array v3, v3, [I

    aput v1, v3, v4

    aput v2, v3, v6

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v3, Lmiui/view/RingerModeLayout$8;

    invoke-direct {v3, p0}, Lmiui/view/RingerModeLayout$8;-><init>(Lmiui/view/RingerModeLayout;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v3, Lmiui/view/RingerModeLayout$9;

    invoke-direct {v3, p0}, Lmiui/view/RingerModeLayout$9;-><init>(Lmiui/view/RingerModeLayout;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iget-object v3, p0, Lmiui/view/RingerModeLayout;->mHandler:Lmiui/view/RingerModeLayout$H;

    invoke-virtual {v3, v6}, Lmiui/view/RingerModeLayout$H;->removeMessages(I)V

    iget-object v3, p0, Lmiui/view/RingerModeLayout;->mHandler:Lmiui/view/RingerModeLayout$H;

    invoke-virtual {v3, v6}, Lmiui/view/RingerModeLayout$H;->sendEmptyMessage(I)Z

    return-void

    :cond_87
    iget-object v3, p0, Lmiui/view/RingerModeLayout;->mSilenceModeExpandContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    goto :goto_51
.end method

.method public init()V
    .registers 9

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string/jumbo v3, "RingerModeLayout"

    const-string/jumbo v4, "init..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v3, 0x110c0039

    invoke-virtual {p0, v3}, Lmiui/view/RingerModeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lmiui/view/RingerModeLayout;->mSilenceModeContent:Landroid/widget/RelativeLayout;

    const v3, 0x110c003d

    invoke-virtual {p0, v3}, Lmiui/view/RingerModeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lmiui/view/RingerModeLayout;->mSilenceModeExpandContent:Landroid/widget/LinearLayout;

    const v3, 0x110c003a

    invoke-virtual {p0, v3}, Lmiui/view/RingerModeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lmiui/view/RingerModeLayout;->mSilenceModeTitle:Landroid/widget/TextView;

    const v3, 0x110c004a

    invoke-virtual {p0, v3}, Lmiui/view/RingerModeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lmiui/widget/SeekBar;

    iput-object v3, p0, Lmiui/view/RingerModeLayout;->mTimeSeekbar:Lmiui/widget/SeekBar;

    const v3, 0x110c003f

    invoke-virtual {p0, v3}, Lmiui/view/RingerModeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioGroup;

    iput-object v3, p0, Lmiui/view/RingerModeLayout;->mRadioGroup:Landroid/widget/RadioGroup;

    const v3, 0x110c0040

    invoke-virtual {p0, v3}, Lmiui/view/RingerModeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lmiui/view/RingerModeLayout;->mStandardBtn:Landroid/widget/RadioButton;

    const v3, 0x110c0041

    invoke-virtual {p0, v3}, Lmiui/view/RingerModeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lmiui/view/RingerModeLayout;->mTotalBtn:Landroid/widget/RadioButton;

    const v3, 0x110c0042

    invoke-virtual {p0, v3}, Lmiui/view/RingerModeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lmiui/view/RingerModeLayout;->mHelpBtn:Landroid/widget/ImageView;

    const v3, 0x110c003b

    invoke-virtual {p0, v3}, Lmiui/view/RingerModeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lmiui/widget/SlidingButton;

    iput-object v3, p0, Lmiui/view/RingerModeLayout;->mSlidingButton:Lmiui/widget/SlidingButton;

    const v3, 0x110c003c

    invoke-virtual {p0, v3}, Lmiui/view/RingerModeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lmiui/view/RingerModeLayout;->mRemainTime_1:Landroid/widget/TextView;

    const v3, 0x110c0049

    invoke-virtual {p0, v3}, Lmiui/view/RingerModeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lmiui/view/RingerModeLayout;->mRemainTime_2:Landroid/widget/TextView;

    const v3, 0x110c0043

    invoke-virtual {p0, v3}, Lmiui/view/RingerModeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lmiui/view/RingerModeLayout;->mTimeLabel:Landroid/widget/RelativeLayout;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lmiui/view/RingerModeLayout;->mTimeList:Ljava/util/List;

    iget-object v4, p0, Lmiui/view/RingerModeLayout;->mTimeList:Ljava/util/List;

    const v3, 0x110c0044

    invoke-virtual {p0, v3}, Lmiui/view/RingerModeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lmiui/view/RingerModeLayout;->mTimeList:Ljava/util/List;

    const v3, 0x110c0047

    invoke-virtual {p0, v3}, Lmiui/view/RingerModeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lmiui/view/RingerModeLayout;->mTimeList:Ljava/util/List;

    const v3, 0x110c0046

    invoke-virtual {p0, v3}, Lmiui/view/RingerModeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lmiui/view/RingerModeLayout;->mTimeList:Ljava/util/List;

    const v3, 0x110c0048

    invoke-virtual {p0, v3}, Lmiui/view/RingerModeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lmiui/view/RingerModeLayout;->mTimeList:Ljava/util/List;

    const v3, 0x110c0045

    invoke-virtual {p0, v3}, Lmiui/view/RingerModeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lmiui/view/RingerModeLayout;->mTimeList:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, p0, Lmiui/view/RingerModeLayout;->mTimeLabelListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_e2

    :cond_f4
    iget-object v3, p0, Lmiui/view/RingerModeLayout;->mTimeList:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lmiui/view/RingerModeLayout;->mSelectedText:Landroid/widget/TextView;

    iget-object v3, p0, Lmiui/view/RingerModeLayout;->mSelectedText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lmiui/view/RingerModeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x11070020

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, p0, Lmiui/view/RingerModeLayout;->mSelectedText:Landroid/widget/TextView;

    const/high16 v4, 0x41400000    # 12.0f

    invoke-virtual {v3, v7, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v3, p0, Lmiui/view/RingerModeLayout;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v3, v6, v6}, Landroid/widget/RadioGroup;->measure(II)V

    iget-object v3, p0, Lmiui/view/RingerModeLayout;->mStandardBtn:Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/RadioButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget-object v4, p0, Lmiui/view/RingerModeLayout;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v4}, Landroid/widget/RadioGroup;->getMeasuredHeight()I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v3, p0, Lmiui/view/RingerModeLayout;->mTotalBtn:Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/RadioButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget-object v4, p0, Lmiui/view/RingerModeLayout;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v4}, Landroid/widget/RadioGroup;->getMeasuredHeight()I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    const v3, 0x110c003e

    invoke-virtual {p0, v3}, Lmiui/view/RingerModeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget-object v4, p0, Lmiui/view/RingerModeLayout;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v4}, Landroid/widget/RadioGroup;->getMeasuredHeight()I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v3, p0, Lmiui/view/RingerModeLayout;->mSilenceModeExpandContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6, v6}, Landroid/widget/LinearLayout;->measure(II)V

    iget-object v3, p0, Lmiui/view/RingerModeLayout;->mSilenceModeExpandContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v3

    iput v3, p0, Lmiui/view/RingerModeLayout;->ContentHeight:I

    iget-object v3, p0, Lmiui/view/RingerModeLayout;->mHelpBtn:Landroid/widget/ImageView;

    iget-object v4, p0, Lmiui/view/RingerModeLayout;->mHelpButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-boolean v7, p0, Lmiui/view/RingerModeLayout;->mShowing:Z

    iget-object v3, p0, Lmiui/view/RingerModeLayout;->mSilenceModeObserver:Lmiui/view/RingerModeLayout$SilenceModeObserver;

    invoke-virtual {v3}, Lmiui/view/RingerModeLayout$SilenceModeObserver;->register()V

    iget-object v3, p0, Lmiui/view/RingerModeLayout;->mSilenceModeContent:Landroid/widget/RelativeLayout;

    new-instance v4, Lmiui/view/RingerModeLayout$6;

    invoke-direct {v4, p0}, Lmiui/view/RingerModeLayout$6;-><init>(Lmiui/view/RingerModeLayout;)V

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lmiui/view/RingerModeLayout;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/provider/MiuiSettings$SilenceMode;->getZenMode(Landroid/content/Context;)I

    move-result v3

    iput v3, p0, Lmiui/view/RingerModeLayout;->mCurrentMode:I

    iget-object v3, p0, Lmiui/view/RingerModeLayout;->mSlidingButton:Lmiui/widget/SlidingButton;

    invoke-direct {p0}, Lmiui/view/RingerModeLayout;->isSilenceModeEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    invoke-direct {p0}, Lmiui/view/RingerModeLayout;->updateRadioGroup()V

    iget-object v3, p0, Lmiui/view/RingerModeLayout;->mSlidingButton:Lmiui/widget/SlidingButton;

    iget-object v4, p0, Lmiui/view/RingerModeLayout;->mSilenceButtonChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v3, v4}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v3, p0, Lmiui/view/RingerModeLayout;->mTimeSeekbar:Lmiui/widget/SeekBar;

    iget-object v4, p0, Lmiui/view/RingerModeLayout;->mTimeSeekBarChangedListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v3, v4}, Lmiui/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v3, p0, Lmiui/view/RingerModeLayout;->mTotalBtn:Landroid/widget/RadioButton;

    iget-object v4, p0, Lmiui/view/RingerModeLayout;->mRadioButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lmiui/view/RingerModeLayout;->mStandardBtn:Landroid/widget/RadioButton;

    iget-object v4, p0, Lmiui/view/RingerModeLayout;->mRadioButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lmiui/view/RingerModeLayout;->mSilenceModeExpandContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v6, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput-boolean v6, p0, Lmiui/view/RingerModeLayout;->mSilenceModeExpanded:Z

    iput-boolean v6, p0, Lmiui/view/RingerModeLayout;->mRemainTextShown:Z

    invoke-direct {p0}, Lmiui/view/RingerModeLayout;->isSilenceModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_1c5

    iget v3, p0, Lmiui/view/RingerModeLayout;->mCurrentMode:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1c1

    const v0, 0x110900da

    :goto_1b8
    iget-object v3, p0, Lmiui/view/RingerModeLayout;->mSilenceModeTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(I)V

    :goto_1bd
    invoke-direct {p0}, Lmiui/view/RingerModeLayout;->updateRemainTimeSeekbar()V

    return-void

    :cond_1c1
    const v0, 0x110900db

    goto :goto_1b8

    :cond_1c5
    iget-object v3, p0, Lmiui/view/RingerModeLayout;->mSilenceModeTitle:Landroid/widget/TextView;

    const v4, 0x110900d7

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1bd
.end method

.method public setLooper(Landroid/os/Looper;)V
    .registers 4

    iput-object p1, p0, Lmiui/view/RingerModeLayout;->mLooper:Landroid/os/Looper;

    new-instance v0, Lmiui/view/RingerModeLayout$H;

    iget-object v1, p0, Lmiui/view/RingerModeLayout;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lmiui/view/RingerModeLayout$H;-><init>(Lmiui/view/RingerModeLayout;Landroid/os/Looper;)V

    iput-object v0, p0, Lmiui/view/RingerModeLayout;->mHandler:Lmiui/view/RingerModeLayout$H;

    return-void
.end method

.method public setParentDialog(Landroid/view/ViewGroup;)V
    .registers 2

    iput-object p1, p0, Lmiui/view/RingerModeLayout;->mDialogView:Landroid/view/ViewGroup;

    return-void
.end method

.method public setVolumeDialog(Lmiui/view/VolumeDialog;)V
    .registers 2

    iput-object p1, p0, Lmiui/view/RingerModeLayout;->mVolumeDialog:Lmiui/view/VolumeDialog;

    return-void
.end method
