.class public Landroid/widget/MediaController;
.super Landroid/widget/FrameLayout;
.source "MediaController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/MediaController$1;,
        Landroid/widget/MediaController$2;,
        Landroid/widget/MediaController$3;,
        Landroid/widget/MediaController$4;,
        Landroid/widget/MediaController$5;,
        Landroid/widget/MediaController$6;,
        Landroid/widget/MediaController$7;,
        Landroid/widget/MediaController$8;,
        Landroid/widget/MediaController$MediaPlayerControl;
    }
.end annotation


# static fields
.field private static final sDefaultTimeout:I = 0xbb8


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAnchor:Landroid/view/View;

.field private final mContext:Landroid/content/Context;

.field private mCurrentTime:Landroid/widget/TextView;

.field private mDecor:Landroid/view/View;

.field private mDecorLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mDragging:Z

.field private mEndTime:Landroid/widget/TextView;

.field private final mFadeOut:Ljava/lang/Runnable;

.field private mFfwdButton:Landroid/widget/ImageButton;

.field private final mFfwdListener:Landroid/view/View$OnClickListener;

.field mFormatBuilder:Ljava/lang/StringBuilder;

.field mFormatter:Ljava/util/Formatter;

.field private mFromXml:Z

.field private final mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mListenersSet:Z

.field private mNextButton:Landroid/widget/ImageButton;

.field private mNextListener:Landroid/view/View$OnClickListener;

.field private mPauseButton:Landroid/widget/ImageButton;

.field private mPauseDescription:Ljava/lang/CharSequence;

.field private final mPauseListener:Landroid/view/View$OnClickListener;

.field private mPlayDescription:Ljava/lang/CharSequence;

.field private mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

.field private mPrevButton:Landroid/widget/ImageButton;

.field private mPrevListener:Landroid/view/View$OnClickListener;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mRewButton:Landroid/widget/ImageButton;

.field private final mRewListener:Landroid/view/View$OnClickListener;

.field private mRoot:Landroid/view/View;

.field private final mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private final mShowProgress:Ljava/lang/Runnable;

.field private mShowing:Z

.field private final mTouchListener:Landroid/view/View$OnTouchListener;

.field private final mUseFastForward:Z

.field private mWindow:Landroid/view/Window;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static synthetic -get0(Landroid/widget/MediaController;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Landroid/widget/MediaController;->mCurrentTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get1(Landroid/widget/MediaController;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Landroid/widget/MediaController;->mDecor:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get2(Landroid/widget/MediaController;)Landroid/view/WindowManager$LayoutParams;
    .registers 2

    iget-object v0, p0, Landroid/widget/MediaController;->mDecorLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic -get3(Landroid/widget/MediaController;)Z
    .registers 2

    iget-boolean v0, p0, Landroid/widget/MediaController;->mDragging:Z

    return v0
.end method

.method static synthetic -get4(Landroid/widget/MediaController;)Landroid/widget/MediaController$MediaPlayerControl;
    .registers 2

    iget-object v0, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    return-object v0
.end method

.method static synthetic -get5(Landroid/widget/MediaController;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Landroid/widget/MediaController;->mShowProgress:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get6(Landroid/widget/MediaController;)Z
    .registers 2

    iget-boolean v0, p0, Landroid/widget/MediaController;->mShowing:Z

    return v0
.end method

.method static synthetic -get7(Landroid/widget/MediaController;)Landroid/view/WindowManager;
    .registers 2

    iget-object v0, p0, Landroid/widget/MediaController;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic -set0(Landroid/widget/MediaController;Z)Z
    .registers 2

    iput-boolean p1, p0, Landroid/widget/MediaController;->mDragging:Z

    return p1
.end method

.method static synthetic -wrap0(Landroid/widget/MediaController;)I
    .registers 2

    invoke-direct {p0}, Landroid/widget/MediaController;->setProgress()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/widget/MediaController;I)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/MediaController;->stringForTime(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Landroid/widget/MediaController;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/MediaController;->doPauseResume()V

    return-void
.end method

.method static synthetic -wrap3(Landroid/widget/MediaController;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/MediaController;->updateFloatingWindowLayout()V

    return-void
.end method

.method static synthetic -wrap4(Landroid/widget/MediaController;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/MediaController;->updatePausePlay()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/widget/MediaController$1;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$1;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    new-instance v0, Landroid/widget/MediaController$2;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$2;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Landroid/widget/MediaController$3;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$3;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mFadeOut:Ljava/lang/Runnable;

    new-instance v0, Landroid/widget/MediaController$4;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$4;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mShowProgress:Ljava/lang/Runnable;

    new-instance v0, Landroid/widget/MediaController$5;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$5;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mPauseListener:Landroid/view/View$OnClickListener;

    new-instance v0, Landroid/widget/MediaController$6;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$6;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    new-instance v0, Landroid/widget/MediaController$7;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$7;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mRewListener:Landroid/view/View$OnClickListener;

    new-instance v0, Landroid/widget/MediaController$8;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$8;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mFfwdListener:Landroid/view/View$OnClickListener;

    iput-object p0, p0, Landroid/widget/MediaController;->mRoot:Landroid/view/View;

    iput-object p1, p0, Landroid/widget/MediaController;->mContext:Landroid/content/Context;

    iput-boolean v1, p0, Landroid/widget/MediaController;->mUseFastForward:Z

    iput-boolean v1, p0, Landroid/widget/MediaController;->mFromXml:Z

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/MediaController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/MediaController$1;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$1;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    new-instance v0, Landroid/widget/MediaController$2;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$2;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Landroid/widget/MediaController$3;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$3;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mFadeOut:Ljava/lang/Runnable;

    new-instance v0, Landroid/widget/MediaController$4;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$4;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mShowProgress:Ljava/lang/Runnable;

    new-instance v0, Landroid/widget/MediaController$5;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$5;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mPauseListener:Landroid/view/View$OnClickListener;

    new-instance v0, Landroid/widget/MediaController$6;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$6;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    new-instance v0, Landroid/widget/MediaController$7;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$7;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mRewListener:Landroid/view/View$OnClickListener;

    new-instance v0, Landroid/widget/MediaController$8;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$8;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mFfwdListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Landroid/widget/MediaController;->mContext:Landroid/content/Context;

    iput-boolean p2, p0, Landroid/widget/MediaController;->mUseFastForward:Z

    invoke-direct {p0}, Landroid/widget/MediaController;->initFloatingWindowLayout()V

    invoke-direct {p0}, Landroid/widget/MediaController;->initFloatingWindow()V

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/MediaController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-void
.end method

.method private disableUnsupportedButtons()V
    .registers 4

    :try_start_0
    iget-object v1, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_14

    iget-object v1, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v1}, Landroid/widget/MediaController$MediaPlayerControl;->canPause()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_14

    iget-object v1, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_14
    iget-object v1, p0, Landroid/widget/MediaController;->mRewButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_28

    iget-object v1, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v1}, Landroid/widget/MediaController$MediaPlayerControl;->canSeekBackward()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_28

    iget-object v1, p0, Landroid/widget/MediaController;->mRewButton:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_28
    iget-object v1, p0, Landroid/widget/MediaController;->mFfwdButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_3c

    iget-object v1, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v1}, Landroid/widget/MediaController$MediaPlayerControl;->canSeekForward()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3c

    iget-object v1, p0, Landroid/widget/MediaController;->mFfwdButton:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_3c
    iget-object v1, p0, Landroid/widget/MediaController;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_5a

    iget-object v1, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v1}, Landroid/widget/MediaController$MediaPlayerControl;->canSeekBackward()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_5a

    iget-object v1, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v1}, Landroid/widget/MediaController$MediaPlayerControl;->canSeekForward()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_5a

    iget-object v1, p0, Landroid/widget/MediaController;->mProgress:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setEnabled(Z)V
    :try_end_5a
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_0 .. :try_end_5a} :catch_5b

    :cond_5a
    :goto_5a
    return-void

    :catch_5b
    move-exception v0

    goto :goto_5a
.end method

.method private doPauseResume()V
    .registers 2

    iget-object v0, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->pause()V

    :goto_d
    invoke-direct {p0}, Landroid/widget/MediaController;->updatePausePlay()V

    return-void

    :cond_11
    iget-object v0, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->start()V

    goto :goto_d
.end method

.method private initControllerView(Landroid/view/View;)V
    .registers 8

    const/4 v3, 0x0

    const/16 v4, 0x8

    iget-object v2, p0, Landroid/widget/MediaController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1040337

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/MediaController;->mPlayDescription:Ljava/lang/CharSequence;

    const v2, 0x1040336

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/MediaController;->mPauseDescription:Ljava/lang/CharSequence;

    const v2, 0x102036c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_36

    iget-object v2, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->requestFocus()Z

    iget-object v2, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    iget-object v5, p0, Landroid/widget/MediaController;->mPauseListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_36
    const v2, 0x1020249

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Landroid/widget/MediaController;->mFfwdButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Landroid/widget/MediaController;->mFfwdButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_5a

    iget-object v2, p0, Landroid/widget/MediaController;->mFfwdButton:Landroid/widget/ImageButton;

    iget-object v5, p0, Landroid/widget/MediaController;->mFfwdListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v2, p0, Landroid/widget/MediaController;->mFromXml:Z

    if-nez v2, :cond_5a

    iget-object v5, p0, Landroid/widget/MediaController;->mFfwdButton:Landroid/widget/ImageButton;

    iget-boolean v2, p0, Landroid/widget/MediaController;->mUseFastForward:Z

    if-eqz v2, :cond_110

    move v2, v3

    :goto_57
    invoke-virtual {v5, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_5a
    const v2, 0x10203b4

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Landroid/widget/MediaController;->mRewButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Landroid/widget/MediaController;->mRewButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_7d

    iget-object v2, p0, Landroid/widget/MediaController;->mRewButton:Landroid/widget/ImageButton;

    iget-object v5, p0, Landroid/widget/MediaController;->mRewListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v2, p0, Landroid/widget/MediaController;->mFromXml:Z

    if-nez v2, :cond_7d

    iget-object v2, p0, Landroid/widget/MediaController;->mRewButton:Landroid/widget/ImageButton;

    iget-boolean v5, p0, Landroid/widget/MediaController;->mUseFastForward:Z

    if-eqz v5, :cond_113

    :goto_7a
    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_7d
    const v2, 0x1020327

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Landroid/widget/MediaController;->mNextButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Landroid/widget/MediaController;->mNextButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_9d

    iget-boolean v2, p0, Landroid/widget/MediaController;->mFromXml:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_9d

    iget-boolean v2, p0, Landroid/widget/MediaController;->mListenersSet:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_9d

    iget-object v2, p0, Landroid/widget/MediaController;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_9d
    const v2, 0x1020392

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Landroid/widget/MediaController;->mPrevButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Landroid/widget/MediaController;->mPrevButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_bd

    iget-boolean v2, p0, Landroid/widget/MediaController;->mFromXml:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_bd

    iget-boolean v2, p0, Landroid/widget/MediaController;->mListenersSet:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_bd

    iget-object v2, p0, Landroid/widget/MediaController;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_bd
    const v2, 0x1020302

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Landroid/widget/MediaController;->mProgress:Landroid/widget/ProgressBar;

    iget-object v2, p0, Landroid/widget/MediaController;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v2, :cond_e2

    iget-object v2, p0, Landroid/widget/MediaController;->mProgress:Landroid/widget/ProgressBar;

    instance-of v2, v2, Landroid/widget/SeekBar;

    if-eqz v2, :cond_db

    iget-object v1, p0, Landroid/widget/MediaController;->mProgress:Landroid/widget/ProgressBar;

    check-cast v1, Landroid/widget/SeekBar;

    iget-object v2, p0, Landroid/widget/MediaController;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    :cond_db
    iget-object v2, p0, Landroid/widget/MediaController;->mProgress:Landroid/widget/ProgressBar;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    :cond_e2
    const v2, 0x1020456

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/widget/MediaController;->mEndTime:Landroid/widget/TextView;

    const v2, 0x1020459

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/widget/MediaController;->mCurrentTime:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, p0, Landroid/widget/MediaController;->mFormatBuilder:Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/Formatter;

    iget-object v3, p0, Landroid/widget/MediaController;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v2, p0, Landroid/widget/MediaController;->mFormatter:Ljava/util/Formatter;

    invoke-direct {p0}, Landroid/widget/MediaController;->installPrevNextListeners()V

    return-void

    :cond_110
    move v2, v4

    goto/16 :goto_57

    :cond_113
    move v3, v4

    goto/16 :goto_7a
.end method

.method private initFloatingWindow()V
    .registers 5

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Landroid/widget/MediaController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Landroid/widget/MediaController;->mWindowManager:Landroid/view/WindowManager;

    new-instance v0, Lcom/android/internal/policy/PhoneWindow;

    iget-object v1, p0, Landroid/widget/MediaController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mWindow:Landroid/view/Window;

    iget-object v0, p0, Landroid/widget/MediaController;->mWindow:Landroid/view/Window;

    iget-object v1, p0, Landroid/widget/MediaController;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {v0, v1, v3, v3}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/widget/MediaController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v2}, Landroid/view/Window;->requestFeature(I)Z

    iget-object v0, p0, Landroid/widget/MediaController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/MediaController;->mDecor:Landroid/view/View;

    iget-object v0, p0, Landroid/widget/MediaController;->mDecor:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/MediaController;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Landroid/widget/MediaController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p0}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Landroid/widget/MediaController;->mWindow:Landroid/view/Window;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    iget-object v0, p0, Landroid/widget/MediaController;->mWindow:Landroid/view/Window;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setVolumeControlStream(I)V

    invoke-virtual {p0, v2}, Landroid/widget/MediaController;->setFocusable(Z)V

    invoke-virtual {p0, v2}, Landroid/widget/MediaController;->setFocusableInTouchMode(Z)V

    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Landroid/widget/MediaController;->setDescendantFocusability(I)V

    invoke-virtual {p0}, Landroid/widget/MediaController;->requestFocus()Z

    return-void
.end method

.method private initFloatingWindowLayout()V
    .registers 5

    const/4 v3, 0x0

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Landroid/widget/MediaController;->mDecorLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Landroid/widget/MediaController;->mDecorLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v1, 0x3e8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, 0x820020

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    return-void
.end method

.method private installPrevNextListeners()V
    .registers 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/widget/MediaController;->mNextButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/widget/MediaController;->mNextButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Landroid/widget/MediaController;->mNextListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Landroid/widget/MediaController;->mNextButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Landroid/widget/MediaController;->mNextListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_2c

    move v0, v1

    :goto_14
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_17
    iget-object v0, p0, Landroid/widget/MediaController;->mPrevButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Landroid/widget/MediaController;->mPrevButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Landroid/widget/MediaController;->mPrevListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Landroid/widget/MediaController;->mPrevButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Landroid/widget/MediaController;->mPrevListener:Landroid/view/View$OnClickListener;

    if-eqz v3, :cond_2e

    :goto_28
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_2b
    return-void

    :cond_2c
    move v0, v2

    goto :goto_14

    :cond_2e
    move v1, v2

    goto :goto_28
.end method

.method private setProgress()I
    .registers 11

    const/4 v6, 0x0

    iget-object v5, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    if-eqz v5, :cond_9

    iget-boolean v5, p0, Landroid/widget/MediaController;->mDragging:Z

    if-eqz v5, :cond_a

    :cond_9
    return v6

    :cond_a
    iget-object v5, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v5}, Landroid/widget/MediaController$MediaPlayerControl;->getCurrentPosition()I

    move-result v4

    iget-object v5, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v5}, Landroid/widget/MediaController$MediaPlayerControl;->getDuration()I

    move-result v0

    iget-object v5, p0, Landroid/widget/MediaController;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v5, :cond_36

    if-lez v0, :cond_29

    int-to-long v6, v4

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    int-to-long v8, v0

    div-long v2, v6, v8

    iget-object v5, p0, Landroid/widget/MediaController;->mProgress:Landroid/widget/ProgressBar;

    long-to-int v6, v2

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_29
    iget-object v5, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v5}, Landroid/widget/MediaController$MediaPlayerControl;->getBufferPercentage()I

    move-result v1

    iget-object v5, p0, Landroid/widget/MediaController;->mProgress:Landroid/widget/ProgressBar;

    mul-int/lit8 v6, v1, 0xa

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    :cond_36
    iget-object v5, p0, Landroid/widget/MediaController;->mEndTime:Landroid/widget/TextView;

    if-eqz v5, :cond_43

    iget-object v5, p0, Landroid/widget/MediaController;->mEndTime:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Landroid/widget/MediaController;->stringForTime(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_43
    iget-object v5, p0, Landroid/widget/MediaController;->mCurrentTime:Landroid/widget/TextView;

    if-eqz v5, :cond_50

    iget-object v5, p0, Landroid/widget/MediaController;->mCurrentTime:Landroid/widget/TextView;

    invoke-direct {p0, v4}, Landroid/widget/MediaController;->stringForTime(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_50
    return v4
.end method

.method private stringForTime(I)Ljava/lang/String;
    .registers 13

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    div-int/lit16 v3, p1, 0x3e8

    rem-int/lit8 v2, v3, 0x3c

    div-int/lit8 v4, v3, 0x3c

    rem-int/lit8 v1, v4, 0x3c

    div-int/lit16 v0, v3, 0xe10

    iget-object v4, p0, Landroid/widget/MediaController;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    if-lez v0, :cond_37

    iget-object v4, p0, Landroid/widget/MediaController;->mFormatter:Ljava/util/Formatter;

    const-string/jumbo v5, "%d:%02d:%02d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {v4, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_37
    iget-object v4, p0, Landroid/widget/MediaController;->mFormatter:Ljava/util/Formatter;

    const-string/jumbo v5, "%02d:%02d"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private updateFloatingWindowLayout()V
    .registers 7

    const/high16 v5, -0x80000000

    const/4 v2, 0x2

    new-array v0, v2, [I

    iget-object v2, p0, Landroid/widget/MediaController;->mAnchor:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v2, p0, Landroid/widget/MediaController;->mDecor:Landroid/view/View;

    iget-object v3, p0, Landroid/widget/MediaController;->mAnchor:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget-object v4, p0, Landroid/widget/MediaController;->mAnchor:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->measure(II)V

    iget-object v1, p0, Landroid/widget/MediaController;->mDecorLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Landroid/widget/MediaController;->mAnchor:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v2, 0x0

    aget v2, v0, v2

    iget-object v3, p0, Landroid/widget/MediaController;->mAnchor:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    const/4 v2, 0x1

    aget v2, v0, v2

    iget-object v3, p0, Landroid/widget/MediaController;->mAnchor:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/MediaController;->mDecor:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    return-void
.end method

.method private updatePausePlay()V
    .registers 3

    iget-object v0, p0, Landroid/widget/MediaController;->mRoot:Landroid/view/View;

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    if-nez v0, :cond_9

    :cond_8
    return-void

    :cond_9
    iget-object v0, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    const v1, 0x1080023

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Landroid/widget/MediaController;->mPauseDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_20
    return-void

    :cond_21
    iget-object v0, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    const v1, 0x1080024

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Landroid/widget/MediaController;->mPlayDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_20
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 7

    const/16 v4, 0xbb8

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_30

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2e

    const/4 v1, 0x1

    :goto_14
    const/16 v2, 0x4f

    if-eq v0, v2, :cond_1c

    const/16 v2, 0x55

    if-ne v0, v2, :cond_32

    :cond_1c
    if-eqz v1, :cond_2d

    invoke-direct {p0}, Landroid/widget/MediaController;->doPauseResume()V

    invoke-virtual {p0, v4}, Landroid/widget/MediaController;->show(I)V

    iget-object v2, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_2d

    iget-object v2, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->requestFocus()Z

    :cond_2d
    return v3

    :cond_2e
    const/4 v1, 0x0

    goto :goto_14

    :cond_30
    const/4 v1, 0x0

    goto :goto_14

    :cond_32
    const/16 v2, 0x3e

    if-eq v0, v2, :cond_1c

    const/16 v2, 0x7e

    if-ne v0, v2, :cond_52

    if-eqz v1, :cond_51

    iget-object v2, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v2}, Landroid/widget/MediaController$MediaPlayerControl;->isPlaying()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_51

    iget-object v2, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v2}, Landroid/widget/MediaController$MediaPlayerControl;->start()V

    invoke-direct {p0}, Landroid/widget/MediaController;->updatePausePlay()V

    invoke-virtual {p0, v4}, Landroid/widget/MediaController;->show(I)V

    :cond_51
    return v3

    :cond_52
    const/16 v2, 0x56

    if-eq v0, v2, :cond_5a

    const/16 v2, 0x7f

    if-ne v0, v2, :cond_70

    :cond_5a
    if-eqz v1, :cond_6f

    iget-object v2, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v2}, Landroid/widget/MediaController$MediaPlayerControl;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_6f

    iget-object v2, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v2}, Landroid/widget/MediaController$MediaPlayerControl;->pause()V

    invoke-direct {p0}, Landroid/widget/MediaController;->updatePausePlay()V

    invoke-virtual {p0, v4}, Landroid/widget/MediaController;->show(I)V

    :cond_6f
    return v3

    :cond_70
    const/16 v2, 0x19

    if-eq v0, v2, :cond_78

    const/16 v2, 0x18

    if-ne v0, v2, :cond_7d

    :cond_78
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    return v2

    :cond_7d
    const/16 v2, 0xa4

    if-eq v0, v2, :cond_78

    const/16 v2, 0x1b

    if-eq v0, v2, :cond_78

    const/4 v2, 0x4

    if-eq v0, v2, :cond_8c

    const/16 v2, 0x52

    if-ne v0, v2, :cond_92

    :cond_8c
    if-eqz v1, :cond_91

    invoke-virtual {p0}, Landroid/widget/MediaController;->hide()V

    :cond_91
    return v3

    :cond_92
    invoke-virtual {p0, v4}, Landroid/widget/MediaController;->show(I)V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    return v2
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    const-class v0, Landroid/widget/MediaController;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hide()V
    .registers 4

    iget-object v1, p0, Landroid/widget/MediaController;->mAnchor:Landroid/view/View;

    if-nez v1, :cond_5

    return-void

    :cond_5
    iget-boolean v1, p0, Landroid/widget/MediaController;->mShowing:Z

    if-eqz v1, :cond_18

    :try_start_9
    iget-object v1, p0, Landroid/widget/MediaController;->mShowProgress:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/widget/MediaController;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Landroid/widget/MediaController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Landroid/widget/MediaController;->mDecor:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_15
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_15} :catch_19

    :goto_15
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/MediaController;->mShowing:Z

    :cond_18
    return-void

    :catch_19
    move-exception v0

    const-string/jumbo v1, "MediaController"

    const-string/jumbo v2, "already removed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15
.end method

.method public isShowing()Z
    .registers 2

    iget-boolean v0, p0, Landroid/widget/MediaController;->mShowing:Z

    return v0
.end method

.method protected makeControllerView()Landroid/view/View;
    .registers 4

    iget-object v1, p0, Landroid/widget/MediaController;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x109007f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/MediaController;->mRoot:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/MediaController;->mRoot:Landroid/view/View;

    invoke-direct {p0, v1}, Landroid/widget/MediaController;->initControllerView(Landroid/view/View;)V

    iget-object v1, p0, Landroid/widget/MediaController;->mRoot:Landroid/view/View;

    return-object v1
.end method

.method public onFinishInflate()V
    .registers 2

    iget-object v0, p0, Landroid/widget/MediaController;->mRoot:Landroid/view/View;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/widget/MediaController;->mRoot:Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/widget/MediaController;->initControllerView(Landroid/view/View;)V

    :cond_9
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_18

    :goto_7
    :pswitch_7
    const/4 v0, 0x1

    return v0

    :pswitch_9
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/MediaController;->show(I)V

    goto :goto_7

    :pswitch_e
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Landroid/widget/MediaController;->show(I)V

    goto :goto_7

    :pswitch_14
    invoke-virtual {p0}, Landroid/widget/MediaController;->hide()V

    goto :goto_7

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_9
        :pswitch_e
        :pswitch_7
        :pswitch_14
    .end packed-switch
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Landroid/widget/MediaController;->show(I)V

    const/4 v0, 0x0

    return v0
.end method

.method public setAnchorView(Landroid/view/View;)V
    .registers 7

    const/4 v4, -0x1

    iget-object v2, p0, Landroid/widget/MediaController;->mAnchor:Landroid/view/View;

    if-eqz v2, :cond_c

    iget-object v2, p0, Landroid/widget/MediaController;->mAnchor:Landroid/view/View;

    iget-object v3, p0, Landroid/widget/MediaController;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_c
    iput-object p1, p0, Landroid/widget/MediaController;->mAnchor:Landroid/view/View;

    iget-object v2, p0, Landroid/widget/MediaController;->mAnchor:Landroid/view/View;

    if-eqz v2, :cond_19

    iget-object v2, p0, Landroid/widget/MediaController;->mAnchor:Landroid/view/View;

    iget-object v3, p0, Landroid/widget/MediaController;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_19
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Landroid/widget/MediaController;->removeAllViews()V

    invoke-virtual {p0}, Landroid/widget/MediaController;->makeControllerView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Landroid/widget/MediaController;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setEnabled(Z)V
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_b
    iget-object v0, p0, Landroid/widget/MediaController;->mFfwdButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/widget/MediaController;->mFfwdButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_14
    iget-object v0, p0, Landroid/widget/MediaController;->mRewButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/widget/MediaController;->mRewButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_1d
    iget-object v0, p0, Landroid/widget/MediaController;->mNextButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2d

    iget-object v3, p0, Landroid/widget/MediaController;->mNextButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_4d

    iget-object v0, p0, Landroid/widget/MediaController;->mNextListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_4d

    move v0, v1

    :goto_2a
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_2d
    iget-object v0, p0, Landroid/widget/MediaController;->mPrevButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3d

    iget-object v0, p0, Landroid/widget/MediaController;->mPrevButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_3a

    iget-object v3, p0, Landroid/widget/MediaController;->mPrevListener:Landroid/view/View$OnClickListener;

    if-eqz v3, :cond_3a

    move v2, v1

    :cond_3a
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_3d
    iget-object v0, p0, Landroid/widget/MediaController;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_46

    iget-object v0, p0, Landroid/widget/MediaController;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setEnabled(Z)V

    :cond_46
    invoke-direct {p0}, Landroid/widget/MediaController;->disableUnsupportedButtons()V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    return-void

    :cond_4d
    move v0, v2

    goto :goto_2a
.end method

.method public setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-direct {p0}, Landroid/widget/MediaController;->updatePausePlay()V

    return-void
.end method

.method public setPrevNextListeners(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .registers 5

    const/4 v1, 0x0

    iput-object p1, p0, Landroid/widget/MediaController;->mNextListener:Landroid/view/View$OnClickListener;

    iput-object p2, p0, Landroid/widget/MediaController;->mPrevListener:Landroid/view/View$OnClickListener;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/MediaController;->mListenersSet:Z

    iget-object v0, p0, Landroid/widget/MediaController;->mRoot:Landroid/view/View;

    if-eqz v0, :cond_2d

    invoke-direct {p0}, Landroid/widget/MediaController;->installPrevNextListeners()V

    iget-object v0, p0, Landroid/widget/MediaController;->mNextButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1e

    iget-boolean v0, p0, Landroid/widget/MediaController;->mFromXml:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1e

    iget-object v0, p0, Landroid/widget/MediaController;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_1e
    iget-object v0, p0, Landroid/widget/MediaController;->mPrevButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2d

    iget-boolean v0, p0, Landroid/widget/MediaController;->mFromXml:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2d

    iget-object v0, p0, Landroid/widget/MediaController;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_2d
    return-void
.end method

.method public show()V
    .registers 2

    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Landroid/widget/MediaController;->show(I)V

    return-void
.end method

.method public show(I)V
    .registers 6

    iget-boolean v0, p0, Landroid/widget/MediaController;->mShowing:Z

    if-nez v0, :cond_26

    iget-object v0, p0, Landroid/widget/MediaController;->mAnchor:Landroid/view/View;

    if-eqz v0, :cond_26

    invoke-direct {p0}, Landroid/widget/MediaController;->setProgress()I

    iget-object v0, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    :cond_14
    invoke-direct {p0}, Landroid/widget/MediaController;->disableUnsupportedButtons()V

    invoke-direct {p0}, Landroid/widget/MediaController;->updateFloatingWindowLayout()V

    iget-object v0, p0, Landroid/widget/MediaController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/widget/MediaController;->mDecor:Landroid/view/View;

    iget-object v2, p0, Landroid/widget/MediaController;->mDecorLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/MediaController;->mShowing:Z

    :cond_26
    invoke-direct {p0}, Landroid/widget/MediaController;->updatePausePlay()V

    iget-object v0, p0, Landroid/widget/MediaController;->mShowProgress:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/MediaController;->post(Ljava/lang/Runnable;)Z

    if-eqz p1, :cond_45

    iget-object v0, p0, Landroid/widget/MediaController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_45

    iget-object v0, p0, Landroid/widget/MediaController;->mFadeOut:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/MediaController;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/widget/MediaController;->mFadeOut:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {p0, v0, v2, v3}, Landroid/widget/MediaController;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_45
    return-void
.end method
