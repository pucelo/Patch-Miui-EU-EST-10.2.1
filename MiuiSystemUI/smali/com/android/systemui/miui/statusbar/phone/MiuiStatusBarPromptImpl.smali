.class Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;
.super Ljava/lang/Object;
.source "MiuiStatusBarPromptImpl.java"

# interfaces
.implements Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;


# instance fields
.field private mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mCallStateIcon:Landroid/widget/ImageView;

.field private mCallTimer:Landroid/widget/Chronometer;

.field private mClickActionType:I

.field private mContext:Landroid/content/Context;

.field private mDisableFlags:I

.field private mDriveModeBg:Landroid/view/View;

.field private mDriveModeMask:Z

.field private mDriveModeTextView:Landroid/widget/TextView;

.field private mNotchRecorderImage:Landroid/widget/ImageView;

.field private mParentView:Landroid/view/View;

.field private mRecordTimer:Landroid/widget/Chronometer;

.field private mReturnToDriveModeView:Landroid/view/View;

.field private mReturnToInCallScreenButton:Landroid/view/View;

.field private mReturnToMultiModeView:Landroid/widget/TextView;

.field private mReturnToRecorderView:Landroid/view/View;

.field private mSafepayStatusBar:Landroid/view/View;

.field private mSafepayStatusBarText:Landroid/widget/TextView;

.field private mSosStatusBar:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/view/View;I)V
    .locals 4

    const v3, 0x7f0a02d3

    const v2, 0x7f0a011b

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mClickActionType:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mDisableFlags:I

    iput-object p1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput p3, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mDisableFlags:I

    iput-object p2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mParentView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mContext:Landroid/content/Context;

    sget-boolean v0, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-eqz v0, :cond_1

    const v0, 0x7f0a01d1

    invoke-direct {p0, v0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToInCallScreenButton:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToInCallScreenButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mCallStateIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToInCallScreenButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Chronometer;

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mCallTimer:Landroid/widget/Chronometer;

    :goto_0
    sget-boolean v0, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-eqz v0, :cond_2

    const v0, 0x7f0a01d4

    invoke-direct {p0, v0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToDriveModeView:Landroid/view/View;

    const v0, 0x7f0a00bf

    invoke-direct {p0, v0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mDriveModeTextView:Landroid/widget/TextView;

    :goto_1
    sget-boolean v0, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-eqz v0, :cond_3

    const v0, 0x7f0a01d9

    invoke-direct {p0, v0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToMultiModeView:Landroid/widget/TextView;

    :goto_2
    const v0, 0x7f0a00c0

    invoke-direct {p0, v0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mDriveModeBg:Landroid/view/View;

    sget-boolean v0, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-eqz v0, :cond_4

    const v0, 0x7f0a01da

    invoke-direct {p0, v0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToRecorderView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToRecorderView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mNotchRecorderImage:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToRecorderView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Chronometer;

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mRecordTimer:Landroid/widget/Chronometer;

    :goto_3
    invoke-direct {p0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->isSafePayDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-eqz v0, :cond_5

    const v0, 0x7f0a01db

    invoke-direct {p0, v0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mSafepayStatusBar:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mSafepayStatusBar:Landroid/view/View;

    const v1, 0x7f0a02d6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mSafepayStatusBarText:Landroid/widget/TextView;

    :cond_0
    :goto_4
    sget-boolean v0, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-eqz v0, :cond_6

    const v0, 0x7f0a01dc

    invoke-direct {p0, v0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mSosStatusBar:Landroid/view/View;

    :goto_5
    return-void

    :cond_1
    const v0, 0x7f0a0242

    invoke-direct {p0, v0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToInCallScreenButton:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToInCallScreenButton:Landroid/view/View;

    const v1, 0x7f0a0071

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mCallStateIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToInCallScreenButton:Landroid/view/View;

    const v1, 0x7f0a0072

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Chronometer;

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mCallTimer:Landroid/widget/Chronometer;

    goto/16 :goto_0

    :cond_2
    const v0, 0x7f0a023f

    invoke-direct {p0, v0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToDriveModeView:Landroid/view/View;

    const v0, 0x7f0a00be

    invoke-direct {p0, v0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mDriveModeTextView:Landroid/widget/TextView;

    goto/16 :goto_1

    :cond_3
    const v0, 0x7f0a0240

    invoke-direct {p0, v0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToMultiModeView:Landroid/widget/TextView;

    goto/16 :goto_2

    :cond_4
    const v0, 0x7f0a0241

    invoke-direct {p0, v0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToRecorderView:Landroid/view/View;

    const v0, 0x7f0a022f

    invoke-direct {p0, v0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Chronometer;

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mRecordTimer:Landroid/widget/Chronometer;

    goto/16 :goto_3

    :cond_5
    const v0, 0x7f0a024f

    invoke-direct {p0, v0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mSafepayStatusBar:Landroid/view/View;

    const v0, 0x7f0a0250

    invoke-direct {p0, v0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mSafepayStatusBarText:Landroid/widget/TextView;

    goto :goto_4

    :cond_6
    const v0, 0x7f0a02a1

    invoke-direct {p0, v0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mSosStatusBar:Landroid/view/View;

    goto :goto_5
.end method

.method private clearReturnToInCallScreenButtonIcons()V
    .locals 0

    return-void
.end method

.method private findViewById(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private isDriveModeDisabled()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mDisableFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isMultiWindowDisabled()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mDisableFlags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isSafePayDisabled()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mDisableFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isSosDisabled()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mDisableFlags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private updateNotchPromptViewLayout(Landroid/view/View;)V
    .locals 5

    const/16 v4, 0x11

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    sget-boolean v3, Lcom/android/systemui/Constants;->IS_NARROW_NOTCH:Z

    if-nez v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-ne v3, v4, :cond_2

    const/4 v1, 0x1

    :goto_0
    if-eq v1, v0, :cond_1

    if-eqz v0, :cond_3

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :goto_1
    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    const v3, 0x800013

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_1
.end method


# virtual methods
.method public blockClickAction()Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->isMultiWindowDisabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToMultiModeView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToMultiModeView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iput v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mClickActionType:I

    return v2

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToInCallScreenButton:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToInCallScreenButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iput v2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mClickActionType:I

    return v2

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->isDriveModeDisabled()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToDriveModeView:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToDriveModeView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mClickActionType:I

    return v2

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToRecorderView:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToRecorderView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mClickActionType:I

    return v2

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mSosStatusBar:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mSosStatusBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mClickActionType:I

    return v2

    :cond_5
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mClickActionType:I

    return v1
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public handleClickAction()V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x3

    iget v6, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mClickActionType:I

    if-nez v6, :cond_1

    const/4 v6, 0x3

    const/4 v7, 0x3

    const/4 v8, 0x0

    :try_start_0
    invoke-static {v6, v7, v8}, Landroid/app/ActivityManagerCompat;->getStackInfo(III)Landroid/app/ActivityManager$StackInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v6, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/android/systemui/statusbar/phone/StatusBar;->showRecentApps(ZZ)V

    const-string/jumbo v6, "clickStatusBarToReturnMultiWindow"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/systemui/recents/misc/RecentsPushEventHelper;->sendMultiWindowEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v6, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mClickActionType:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/miui/voiptalk/service/MiuiVoipManager;->getInstance(Landroid/content/Context;)Lcom/miui/voiptalk/service/MiuiVoipManager;

    move-result-object v4

    invoke-virtual {v5}, Lmiui/telephony/TelephonyManager;->getCallState()I

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v4}, Lcom/miui/voiptalk/service/MiuiVoipManager;->getCallState()I

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->hideReturnToInCallScreenButton()V

    return-void

    :cond_2
    iget-object v6, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/systemui/miui/statusbar/InCallUtils;->goInCallScreen(Landroid/content/Context;)V

    return-void

    :cond_3
    iget v6, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mClickActionType:I

    if-ne v6, v8, :cond_4

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.MAIN"

    invoke-direct {v3, v6, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v6, 0x14040000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v6, "com.android.soundrecorder"

    const-string/jumbo v7, "com.android.soundrecorder.SoundRecorder"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v6, v3, v7}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_4
    iget v6, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mClickActionType:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_5

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v6, "miui.intent.action.EXIT_SOS"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "com.android.settings"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v6, 0x10000000

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_5
    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public hideReturnToInCallScreenButton()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mCallTimer:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->stop()V

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToInCallScreenButton:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->clearReturnToInCallScreenButtonIcons()V

    return-void
.end method

.method public hideReturnToRecorderView()V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mNotchRecorderImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mRecordTimer:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->stop()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToRecorderView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public hideSafePayStatusBar()V
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->isSafePayDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mSafepayStatusBar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public hideSosStatusBar()V
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->isSosDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mSosStatusBar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public initReturnToInCallScreenButtonIcons()V
    .locals 0

    return-void
.end method

.method public makeReturnToInCallScreenButtonGone()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToInCallScreenButton:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public makeReturnToInCallScreenButtonVisible()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToInCallScreenButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public showReturnToDriveMode(Z)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->isDriveModeDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToDriveModeView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mDriveModeBg:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToDriveModeView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mDriveModeBg:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public showReturnToDriveModeView(ZZ)V
    .locals 4

    const/16 v2, 0x8

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->isDriveModeDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-boolean p2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mDriveModeMask:Z

    if-eqz p2, :cond_3

    sget-boolean v0, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mDriveModeTextView:Landroid/widget/TextView;

    const v3, 0x7f110236

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToDriveModeView:Landroid/view/View;

    if-eqz p1, :cond_5

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    sget-boolean v0, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToDriveModeView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->updateNotchPromptViewLayout(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mDriveModeBg:Landroid/view/View;

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mDriveModeTextView:Landroid/widget/TextView;

    const v3, 0x7f110235

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_3
    sget-boolean v0, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mDriveModeTextView:Landroid/widget/TextView;

    const v3, 0x7f110237

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mDriveModeTextView:Landroid/widget/TextView;

    const v3, 0x7f110234

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_1

    :cond_6
    move v1, v2

    goto :goto_2
.end method

.method public showReturnToInCall(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToInCallScreenButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToInCallScreenButton:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public showReturnToInCallScreenButton(Ljava/lang/String;J)V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToInCallScreenButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-boolean v1, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600c0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToInCallScreenButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mCallStateIcon:Landroid/widget/ImageView;

    const v2, 0x7f08064e

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    sget-boolean v1, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-nez v1, :cond_8

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mCallTimer:Landroid/widget/Chronometer;

    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f11019d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Chronometer;->setFormat(Ljava/lang/String;)V

    :goto_2
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mCallTimer:Landroid/widget/Chronometer;

    invoke-virtual {v1, p2, p3}, Landroid/widget/Chronometer;->setBase(J)V

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mCallTimer:Landroid/widget/Chronometer;

    invoke-virtual {v1}, Landroid/widget/Chronometer;->start()V

    :goto_3
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToInCallScreenButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->initReturnToInCallScreenButtonIcons()V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToInCallScreenButton:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    sget-boolean v1, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToInCallScreenButton:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->updateNotchPromptViewLayout(Landroid/view/View;)V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToInCallScreenButton:Landroid/view/View;

    const v2, 0x7f080654

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_3
    sget-boolean v1, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600bd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToInCallScreenButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_4
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mCallStateIcon:Landroid/widget/ImageView;

    const v2, 0x7f08064d

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToInCallScreenButton:Landroid/view/View;

    const v2, 0x7f08064c

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_4

    :cond_5
    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mCallTimer:Landroid/widget/Chronometer;

    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f11019e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Chronometer;->setFormat(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mCallTimer:Landroid/widget/Chronometer;

    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f11019c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Chronometer;->setFormat(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_7
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mCallTimer:Landroid/widget/Chronometer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Chronometer;->setFormat(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_8
    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mCallTimer:Landroid/widget/Chronometer;

    invoke-virtual {v1}, Landroid/widget/Chronometer;->stop()V

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mCallTimer:Landroid/widget/Chronometer;

    invoke-virtual {v1, p2, p3}, Landroid/widget/Chronometer;->setBase(J)V

    goto/16 :goto_3

    :cond_9
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mCallTimer:Landroid/widget/Chronometer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/widget/Chronometer;->setBase(J)V

    goto/16 :goto_3

    :cond_a
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mCallTimer:Landroid/widget/Chronometer;

    invoke-virtual {v1, p2, p3}, Landroid/widget/Chronometer;->setBase(J)V

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mCallTimer:Landroid/widget/Chronometer;

    invoke-virtual {v1}, Landroid/widget/Chronometer;->start()V

    goto/16 :goto_3
.end method

.method public showReturnToMulti(Z)V
    .locals 3

    invoke-direct {p0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->isMultiWindowDisabled()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    sget-boolean v1, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToMultiModeView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600be

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToMultiModeView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToMultiModeView:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->updateNotchPromptViewLayout(Landroid/view/View;)V

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToMultiModeView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToMultiModeView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public showReturnToRecorderView(Ljava/lang/String;ZJ)V
    .locals 7

    sget-boolean v4, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToRecorderView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v4, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mContext:Landroid/content/Context;

    const v5, 0x7f0600c4

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v4, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToRecorderView:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mNotchRecorderImage:Landroid/widget/ImageView;

    const v5, 0x7f080652

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v4, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToRecorderView:Landroid/view/View;

    invoke-direct {p0, v4}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->updateNotchPromptViewLayout(Landroid/view/View;)V

    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v0, v4, p3

    iget-object v4, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mRecordTimer:Landroid/widget/Chronometer;

    invoke-virtual {v4}, Landroid/widget/Chronometer;->stop()V

    iget-object v4, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mRecordTimer:Landroid/widget/Chronometer;

    invoke-virtual {v4, v0, v1}, Landroid/widget/Chronometer;->setBase(J)V

    if-eqz p2, :cond_0

    iget-object v4, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mRecordTimer:Landroid/widget/Chronometer;

    invoke-virtual {v4}, Landroid/widget/Chronometer;->start()V

    :cond_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToRecorderView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToRecorderView:Landroid/view/View;

    const v5, 0x7f0a0230

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public showReturnToRecorderView(Z)V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToRecorderView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showReturnToSafeBar(Z)V
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->isSafePayDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mSafepayStatusBar:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showReturnToSosBar(Z)V
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->isSosDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mSosStatusBar:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showSafePayStatusBar(ILandroid/os/Bundle;)V
    .locals 4

    invoke-direct {p0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->isSafePayDisabled()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    sget-boolean v2, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mSafepayStatusBar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v0, -0x1

    packed-switch p1, :pswitch_data_0

    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mSafepayStatusBar:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mSafepayStatusBar:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->updateNotchPromptViewLayout(Landroid/view/View;)V

    :goto_1
    return-void

    :pswitch_0
    const v0, 0x7f0600c5

    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mSafepayStatusBarText:Landroid/widget/TextView;

    const v3, 0x7f1104b4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :pswitch_1
    const v0, 0x7f0600c1

    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mSafepayStatusBarText:Landroid/widget/TextView;

    const v3, 0x7f1104b2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0600c3

    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mSafepayStatusBarText:Landroid/widget/TextView;

    const v3, 0x7f1104b5

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mSafepayStatusBar:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    packed-switch p1, :pswitch_data_1

    goto :goto_1

    :pswitch_3
    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mSafepayStatusBar:Landroid/view/View;

    const v3, 0x7f08034d

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mSafepayStatusBarText:Landroid/widget/TextView;

    const v3, 0x7f1105e4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :pswitch_4
    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mSafepayStatusBar:Landroid/view/View;

    const v3, 0x7f08034e

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mSafepayStatusBarText:Landroid/widget/TextView;

    const v3, 0x7f1105e3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :pswitch_5
    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mSafepayStatusBar:Landroid/view/View;

    const v3, 0x7f08034f

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mSafepayStatusBarText:Landroid/widget/TextView;

    const v3, 0x7f1105e6

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public showSosStatusBar()V
    .locals 3

    invoke-direct {p0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->isSosDisabled()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    sget-boolean v1, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mSosStatusBar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600c6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mSosStatusBar:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mSosStatusBar:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->updateNotchPromptViewLayout(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mSosStatusBar:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
