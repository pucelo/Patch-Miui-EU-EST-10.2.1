.class public Landroid/inputmethodservice/VoiceAreaLayoutHelper;
.super Ljava/lang/Object;
.source "VoiceAreaLayoutHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/VoiceAreaLayoutHelper$1;
    }
.end annotation


# static fields
.field private static DEBUG:Z

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final VOICE_TO_TEXT_HINT:Ljava/lang/String;

.field mCallback:Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;

.field private mCandidatesViewGroup:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field private mDynamicVoiceInput:Landroid/widget/TextView;

.field private mRealCandidatesView:Landroid/view/View;

.field private mRecodingStateAnimatorView:Landroid/inputmethodservice/RecodingStateAnimatorView;

.field private mVoiceInputButton:Landroid/widget/LinearLayout;

.field private mVoiceToTextLayout:Landroid/widget/LinearLayout;

.field private mVoiceToTextWindow:Landroid/widget/PopupWindow;


# direct methods
.method static synthetic -get0(Landroid/inputmethodservice/VoiceAreaLayoutHelper;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Landroid/inputmethodservice/VoiceAreaLayoutHelper;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mDynamicVoiceInput:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get2(Landroid/inputmethodservice/VoiceAreaLayoutHelper;)Landroid/inputmethodservice/RecodingStateAnimatorView;
    .registers 2

    iget-object v0, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mRecodingStateAnimatorView:Landroid/inputmethodservice/RecodingStateAnimatorView;

    return-object v0
.end method

.method static synthetic -get3(Landroid/inputmethodservice/VoiceAreaLayoutHelper;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mVoiceInputButton:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get4(Landroid/inputmethodservice/VoiceAreaLayoutHelper;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mVoiceToTextLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get5(Landroid/inputmethodservice/VoiceAreaLayoutHelper;)Landroid/widget/PopupWindow;
    .registers 2

    iget-object v0, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mVoiceToTextWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/inputmethodservice/VoiceAreaLayoutHelper;)Landroid/widget/PopupWindow;
    .registers 2

    invoke-direct {p0}, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->getVoiceToTextWindow()Landroid/widget/PopupWindow;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/inputmethodservice/VoiceAreaLayoutHelper;)V
    .registers 1

    invoke-direct {p0}, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->hidePopupWindow()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "VoiceAreaLayoutHelper"

    sput-object v0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/inputmethodservice/VoiceAreaLayoutHelper$1;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/VoiceAreaLayoutHelper$1;-><init>(Landroid/inputmethodservice/VoiceAreaLayoutHelper;)V

    iput-object v0, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mCallback:Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;

    iput-object p1, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mContext:Landroid/content/Context;

    iget-object v0, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mContext:Landroid/content/Context;

    const v1, 0x110900f8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->VOICE_TO_TEXT_HINT:Ljava/lang/String;

    return-void
.end method

.method private getVoiceToTextWindow()Landroid/widget/PopupWindow;
    .registers 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mVoiceToTextWindow:Landroid/widget/PopupWindow;

    if-nez v0, :cond_47

    const-string/jumbo v0, "new popupWindow"

    invoke-static {v0}, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->initVoiceToTextLayout()V

    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mVoiceToTextLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mVoiceInputButton:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mVoiceInputButton:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLocationOnScreen()[I

    move-result-object v3

    aget v3, v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v0, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mVoiceToTextWindow:Landroid/widget/PopupWindow;

    iget-object v0, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mVoiceToTextLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11070028

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mVoiceToTextWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mVoiceToTextWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    iget-object v0, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mVoiceToTextWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setLayoutInScreenEnabled(Z)V

    :cond_47
    iget-object v0, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mCallback:Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;

    if-eqz v0, :cond_5b

    iget-object v0, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mCallback:Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;

    iget-object v1, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->VOICE_TO_TEXT_HINT:Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;->updateText(Ljava/lang/String;Z)V

    iget-object v0, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mRecodingStateAnimatorView:Landroid/inputmethodservice/RecodingStateAnimatorView;

    if-eqz v0, :cond_5b

    iget-object v0, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mRecodingStateAnimatorView:Landroid/inputmethodservice/RecodingStateAnimatorView;

    invoke-virtual {v0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->init()V

    :cond_5b
    iget-object v0, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mVoiceToTextWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method private hidePopupWindow()V
    .registers 4

    iget-object v1, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mVoiceToTextWindow:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_20

    const-string/jumbo v1, "hide popupWindow"

    invoke-static {v1}, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->log(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mContext:Landroid/content/Context;

    const v2, 0x1104000c

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mVoiceToTextLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v1, Landroid/inputmethodservice/VoiceAreaLayoutHelper$3;

    invoke-direct {v1, p0}, Landroid/inputmethodservice/VoiceAreaLayoutHelper$3;-><init>(Landroid/inputmethodservice/VoiceAreaLayoutHelper;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_20
    return-void
.end method

.method private initVoiceToTextLayout()V
    .registers 4

    const-string/jumbo v0, "initVoiceToTextLayout"

    invoke-static {v0}, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->log(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x11030023

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mVoiceToTextLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mVoiceToTextLayout:Landroid/widget/LinearLayout;

    const v1, 0x110c0064

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/RecodingStateAnimatorView;

    iput-object v0, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mRecodingStateAnimatorView:Landroid/inputmethodservice/RecodingStateAnimatorView;

    iget-object v0, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mVoiceToTextLayout:Landroid/widget/LinearLayout;

    const v1, 0x110c0065

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mDynamicVoiceInput:Landroid/widget/TextView;

    return-void
.end method

.method public static log(Ljava/lang/String;)V
    .registers 2

    const/4 v0, 0x0

    invoke-static {v0, p0}, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->log(ZLjava/lang/String;)V

    return-void
.end method

.method public static log(ZLjava/lang/String;)V
    .registers 3

    if-nez p0, :cond_6

    sget-boolean v0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->DEBUG:Z

    if-eqz v0, :cond_b

    :cond_6
    sget-object v0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return-void
.end method


# virtual methods
.method public getSpeechRecognizationCallback()Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;
    .registers 2

    iget-object v0, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mCallback:Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;

    return-object v0
.end method

.method public getVoiceInputButton()Landroid/widget/LinearLayout;
    .registers 9

    const/4 v4, 0x0

    iget-object v2, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x11030022

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mVoiceInputButton:Landroid/widget/LinearLayout;

    iget-object v2, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mCandidatesViewGroup:Landroid/view/ViewGroup;

    if-eqz v2, :cond_42

    iget-object v2, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mRealCandidatesView:Landroid/view/View;

    if-nez v2, :cond_23

    iget-object v2, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mCandidatesViewGroup:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mRealCandidatesView:Landroid/view/View;

    :cond_23
    iget-object v2, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mCandidatesViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v2, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mRealCandidatesView:Landroid/view/View;

    if-eqz v2, :cond_42

    const-string/jumbo v2, "add real candidatesView"

    invoke-static {v2}, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->log(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mVoiceInputButton:Landroid/widget/LinearLayout;

    iget-object v3, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mRealCandidatesView:Landroid/view/View;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    const/16 v7, 0x50

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_42
    iget-object v2, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mVoiceInputButton:Landroid/widget/LinearLayout;

    const v3, 0x110c0062

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mVoiceInputButton:Landroid/widget/LinearLayout;

    const v3, 0x110c0063

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Landroid/inputmethodservice/VoiceAreaLayoutHelper$2;

    invoke-direct {v2, p0, v1}, Landroid/inputmethodservice/VoiceAreaLayoutHelper$2;-><init>(Landroid/inputmethodservice/VoiceAreaLayoutHelper;Landroid/widget/TextView;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const-string/jumbo v2, "init voice area layout"

    invoke-static {v2}, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->log(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3, v2}, Landroid/inputmethodservice/VoiceInputReporter;->reportEvent(ILjava/lang/String;)V

    iget-object v2, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mVoiceInputButton:Landroid/widget/LinearLayout;

    return-object v2
.end method

.method public removeLayout(Landroid/widget/FrameLayout;)V
    .registers 3

    const-string/jumbo v0, "removeLayout called"

    invoke-static {v0}, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->log(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mVoiceInputButton:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mVoiceInputButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_f
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    return-void
.end method

.method public restoreCandidatesFrame(Landroid/widget/FrameLayout;)V
    .registers 8

    const/4 v5, -0x1

    const/4 v4, -0x2

    const-string/jumbo v0, "restoreCandidatesFrame called"

    invoke-static {v0}, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->hidePopupWindow()V

    invoke-virtual {p0, p1}, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->removeLayout(Landroid/widget/FrameLayout;)V

    iget-object v0, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mCandidatesViewGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_37

    iget-object v0, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mRealCandidatesView:Landroid/view/View;

    if-eqz v0, :cond_37

    iget-object v0, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mRealCandidatesView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_37

    iget-object v0, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mCandidatesViewGroup:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mRealCandidatesView:Landroid/view/View;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x50

    invoke-direct {v2, v5, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mCandidatesViewGroup:Landroid/view/ViewGroup;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_36
    return-void

    :cond_37
    const-string/jumbo v0, "fail to restoreCandidatesFrame"

    invoke-static {v0}, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->log(Ljava/lang/String;)V

    goto :goto_36
.end method

.method public setCandidatesViewGroup(Landroid/view/ViewGroup;)V
    .registers 3

    iget-object v0, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mCandidatesViewGroup:Landroid/view/ViewGroup;

    if-nez v0, :cond_6

    iput-object p1, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mCandidatesViewGroup:Landroid/view/ViewGroup;

    :cond_6
    return-void
.end method
