.class public Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;
.super Ljava/lang/Object;
.source "MiuiVolumeDialogImpl.java"

# interfaces
.implements Lcom/android/systemui/plugins/VolumeDialog;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$1;,
        Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$2;,
        Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$3;,
        Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$Accessibility;,
        Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$CustomDialog;,
        Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$H;,
        Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$SilenceModeObserver;,
        Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;,
        Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumns;,
        Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeSeekBarChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAccessibility:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$Accessibility;

.field private final mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

.field private mActiveStream:I

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mAutomute:Z

.field private final mClickExpand:Landroid/view/View$OnClickListener;

.field private final mColumns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;",
            ">;"
        }
    .end annotation
.end field

.field private mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

.field private final mContext:Landroid/content/Context;

.field private mController:Lcom/android/systemui/plugins/VolumeDialogController;

.field private final mControllerCallbackH:Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

.field private mDensity:I

.field private mDialog:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$CustomDialog;

.field private mDialogColumns:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumns;

.field private mDialogContentView:Landroid/view/ViewGroup;

.field private mDialogView:Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;

.field private final mDynamic:Landroid/util/SparseBooleanArray;

.field private mExpandButton:Landroid/widget/ImageView;

.field private mExpanded:Z

.field private final mHandler:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$H;

.field private mHovering:Z

.field private mIconTintDark:Landroid/content/res/ColorStateList;

.field private final mKeyguard:Landroid/app/KeyguardManager;

.field private final mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

.field private mLockRecordTypes:I

.field private mMutedColorList:Landroid/content/res/ColorStateList;

.field private mOrientation:I

.field private mPendingRecheckAll:Z

.field private mPendingStateChanged:Z

.field private mRingerModeChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

.field private final mSafetyWarningLock:Ljava/lang/Object;

.field private mShowA11yStream:Z

.field private mShowing:Z

.field private mSilenceModeObserver:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$SilenceModeObserver;

.field private mSilentMode:Z

.field private mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

.field private mTempColumn:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;

.field private mTempColumnContainer:Landroid/widget/FrameLayout;

.field private mWindow:Landroid/view/Window;

.field private mWindowType:I


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$Accessibility;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mAccessibility:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$Accessibility;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$H;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mHandler:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$H;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mIconTintDark:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mOrientation:I

    return v0
.end method

.method static synthetic -get13(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mPendingRecheckAll:Z

    return v0
.end method

.method static synthetic -get14(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mPendingStateChanged:Z

    return v0
.end method

.method static synthetic -get15(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mSafetyWarningLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mShowing:Z

    return v0
.end method

.method static synthetic -get17(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mSilentMode:Z

    return v0
.end method

.method static synthetic -get18(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialogController$State;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Landroid/view/accessibility/AccessibilityManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Lcom/android/systemui/volume/ConfigurableTexts;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialogController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mDensity:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$CustomDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mDialog:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$CustomDialog;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mDialogView:Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mExpanded:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mActiveStream:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mDensity:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mHovering:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mOrientation:I

    return p1
.end method

.method static synthetic -set4(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mPendingRecheckAll:Z

    return p1
.end method

.method static synthetic -set5(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mPendingStateChanged:Z

    return p1
.end method

.method static synthetic -set6(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;Lcom/android/systemui/volume/SafetyWarningDialog;)Lcom/android/systemui/volume/SafetyWarningDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    return-object p1
.end method

.method static synthetic -set7(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mShowA11yStream:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->getActiveColumn()Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/widget/SeekBar;I)I
    .locals 1

    invoke-static {p0, p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->getImpliedLevel(Landroid/widget/SeekBar;I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->unlockRecordType(I)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->updateColumnH(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->updateExpandedH(ZZ)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->vibrateH()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->initDialog()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;Lcom/android/systemui/plugins/VolumeDialogController$State;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->onStateChangedH(Lcom/android/systemui/plugins/VolumeDialogController$State;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->recheckH(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->recordVolumeChanged(IZ)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->setStreamImportantH(IZ)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->showH(I)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->showSafetyWarningH(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/miui/volume/Util;->logTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$H;

    invoke-direct {v0, p0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$H;-><init>(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)V

    iput-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mHandler:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$H;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mColumns:Ljava/util/List;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mDynamic:Landroid/util/SparseBooleanArray;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mSafetyWarningLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$Accessibility;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$Accessibility;-><init>(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$Accessibility;)V

    iput-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mAccessibility:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$Accessibility;

    iput-boolean v3, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mAutomute:Z

    iput-boolean v3, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mSilentMode:Z

    iput-boolean v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mHovering:Z

    iput v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mLockRecordTypes:I

    new-instance v0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$SilenceModeObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$SilenceModeObserver;-><init>(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)V

    iput-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mSilenceModeObserver:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$SilenceModeObserver;

    new-instance v0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$1;-><init>(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)V

    iput-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mRingerModeChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$2;-><init>(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)V

    iput-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mControllerCallbackH:Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

    new-instance v0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$3;-><init>(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)V

    iput-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mClickExpand:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mContext:Landroid/content/Context;

    const-class v0, Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/VolumeDialogController;

    iput-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mKeyguard:Landroid/app/KeyguardManager;

    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iput-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mAudioManager:Landroid/media/AudioManager;

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    return-void
.end method

.method private addColumn(IIIZ)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->addColumn(IIIZZ)V

    return-void
.end method

.method private addColumn(IIIZZ)V
    .locals 9

    const/4 v8, 0x1

    new-instance v1, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;-><init>(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)V

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->initColumn(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;IIIZ)V

    iget-boolean v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mShowA11yStream:Z

    if-eqz v0, :cond_0

    if-eqz p5, :cond_0

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mColumns:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v8, :cond_0

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mDialogColumns:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumns;

    invoke-virtual {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumns;->getCurrentParent()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-le v7, v8, :cond_0

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mDialogColumns:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumns;

    invoke-static {v1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get17(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Landroid/view/View;

    move-result-object v2

    add-int/lit8 v3, v7, -0x2

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumns;->addView(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mColumns:Ljava/util/List;

    add-int/lit8 v2, v6, -0x2

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mDialogColumns:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumns;

    invoke-static {v1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get17(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumns;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mColumns:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private addExistingColumns()V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mColumns:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_0

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mColumns:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;

    invoke-static {v1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get14(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)I

    move-result v2

    invoke-static {v1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get10(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)I

    move-result v3

    invoke-static {v1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get9(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)I

    move-result v4

    invoke-static {v1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get8(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Z

    move-result v5

    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->initColumn(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;IIIZZ)V

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mDialogColumns:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumns;

    invoke-static {v1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get17(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumns;->addView(Landroid/view/View;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private addTempColumn(IIIZ)V
    .locals 6

    new-instance v1, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;-><init>(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)V

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->initColumn(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;IIIZ)V

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mTempColumnContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mTempColumnContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mTempColumnContainer:Landroid/widget/FrameLayout;

    invoke-static {v1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get17(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mTempColumn:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;

    return-void
.end method

.method private computeTimeoutH()I
    .locals 2

    const/16 v1, 0x1388

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mAccessibility:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$Accessibility;

    invoke-static {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$Accessibility;->-get0(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$Accessibility;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x4e20

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mHovering:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x3e80

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mExpanded:Z

    if-eqz v0, :cond_3

    return v1

    :cond_3
    iget v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mActiveStream:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    const/16 v0, 0x5dc

    return v0

    :cond_4
    const/16 v0, 0xbb8

    return v0
.end method

.method private findColumn(I)Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mColumns:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;

    invoke-static {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get14(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)I

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v0

    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private getActiveColumn()Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mColumns:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;

    invoke-static {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get14(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)I

    move-result v2

    iget v3, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mActiveStream:I

    if-ne v2, v3, :cond_0

    return-object v0

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mColumns:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;

    return-object v2
.end method

.method private static getImpliedLevel(Landroid/widget/SeekBar;I)I
    .locals 5

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    div-int/lit8 v3, v1, 0x64

    add-int/lit8 v2, v3, -0x1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    if-ne p1, v1, :cond_1

    div-int/lit8 v0, v1, 0x64

    goto :goto_0

    :cond_1
    int-to-float v3, p1

    int-to-float v4, v1

    div-float/2addr v3, v4

    int-to-float v4, v2

    mul-float/2addr v3, v4

    float-to-int v3, v3

    add-int/lit8 v0, v3, 0x1

    goto :goto_0
.end method

.method private getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;
    .locals 4

    iget-object v1, p1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->remoteLabel:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->remoteLabel:Ljava/lang/String;

    return-object v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mContext:Landroid/content/Context;

    iget v2, p1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->name:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Can\'t find translation for stream "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, ""

    return-object v1
.end method

.method private initColumn(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;IIIZ)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->initColumn(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;IIIZZ)V

    return-void
.end method

.method private initColumn(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;IIIZZ)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-static {p1, p2}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-set16(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;I)I

    invoke-static {p1, p3}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-set11(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;I)I

    invoke-static {p1, p4}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-set10(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;I)I

    invoke-static {p1, p5}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-set9(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;Z)Z

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mDialog:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$CustomDialog;

    invoke-virtual {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$CustomDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/miui/volume/R$layout;->miui_volume_dialog_column:I

    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mDialogColumns:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumns;

    invoke-virtual {v2}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumns;->getCurrentParent()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-set19(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;Landroid/view/View;)Landroid/view/View;

    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get17(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Landroid/view/View;

    move-result-object v0

    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get14(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get17(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get17(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/android/systemui/miui/volume/R$id;->volume_column_slider:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    invoke-static {p1, v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-set14(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;Landroid/widget/SeekBar;)Landroid/widget/SeekBar;

    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get12(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Landroid/widget/SeekBar;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeSeekBarChangeListener;

    invoke-direct {v1, p0, p1, v3}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeSeekBarChangeListener;-><init>(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeSeekBarChangeListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-static {p1, v3}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-set0(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get17(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$6;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$6;-><init>(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get17(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/android/systemui/miui/volume/R$id;->volume_column_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-set5(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get5(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get14(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get5(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImportantForAccessibility(I)V

    :cond_0
    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get12(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get4(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    if-eqz p6, :cond_1

    invoke-static {p1, v4}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-set2(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;I)I

    invoke-static {p1, v3}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-set3(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    invoke-static {p1, v3}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-set4(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    :cond_1
    return-void
.end method

.method private initDialog()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$CustomDialog;

    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$CustomDialog;-><init>(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mDialog:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$CustomDialog;

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mDialog:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$CustomDialog;

    invoke-virtual {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mWindow:Landroid/view/Window;

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v5}, Landroid/view/Window;->requestFeature(I)Z

    new-instance v0, Lcom/android/systemui/volume/ConfigurableTexts;

    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/ConfigurableTexts;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

    iput-boolean v4, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mHovering:Z

    iput-boolean v4, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mShowing:Z

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mDialog:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$CustomDialog;

    invoke-virtual {v0, v5}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$CustomDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mDialog:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$CustomDialog;

    sget v1, Lcom/android/systemui/miui/volume/R$layout;->miui_volume_dialog:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$CustomDialog;->setContentView(I)V

    invoke-direct {p0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->setupWindowAttributes()V

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mDialog:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$CustomDialog;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mDialog:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$CustomDialog;

    sget v1, Lcom/android/systemui/miui/volume/R$id;->volume_dialog:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;

    iput-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mDialogView:Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mDialogView:Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;

    new-instance v1, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$4;-><init>(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mDialog:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$CustomDialog;

    sget v1, Lcom/android/systemui/miui/volume/R$id;->volume_dialog_content:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mDialogContentView:Landroid/view/ViewGroup;

    new-instance v2, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumns;

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mDialogContentView:Landroid/view/ViewGroup;

    sget v1, Lcom/android/systemui/miui/volume/R$id;->volume_dialog_column_collapsed:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mDialogContentView:Landroid/view/ViewGroup;

    sget v3, Lcom/android/systemui/miui/volume/R$id;->volume_dialog_columns:I

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {v2, v0, v1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumns;-><init>(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    iput-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mDialogColumns:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumns;

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mDialogView:Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;

    sget v1, Lcom/android/systemui/miui/volume/R$id;->volume_dialog_column_temp:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mTempColumnContainer:Landroid/widget/FrameLayout;

    iput-boolean v4, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mExpanded:Z

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mDialogView:Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;

    sget v1, Lcom/android/systemui/miui/volume/R$id;->volume_expand_button:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mExpandButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mExpandButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mClickExpand:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mDialogView:Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;

    new-instance v1, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$5;-><init>(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;->setMotionCallback(Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion$Callback;)V

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mColumns:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/android/systemui/miui/volume/R$drawable;->ic_miui_volume_media:I

    sget v1, Lcom/android/systemui/miui/volume/R$drawable;->ic_miui_volume_media_mute:I

    invoke-direct {p0, v6, v0, v1, v5}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->addColumn(IIIZ)V

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/AudioSystemCompat;->isSingleVolume(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/android/systemui/miui/volume/R$drawable;->ic_miui_volume_accessibility:I

    sget v1, Lcom/android/systemui/miui/volume/R$drawable;->ic_miui_volume_accessibility_mute:I

    const/16 v2, 0xa

    invoke-direct {p0, v2, v0, v1, v5}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->addColumn(IIIZ)V

    sget v0, Lcom/android/systemui/miui/volume/R$drawable;->ic_miui_volume_ringer:I

    sget v1, Lcom/android/systemui/miui/volume/R$drawable;->ic_miui_volume_ringer_mute:I

    const/4 v2, 0x2

    invoke-direct {p0, v2, v0, v1, v5}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->addColumn(IIIZ)V

    sget v0, Lcom/android/systemui/miui/volume/R$drawable;->ic_miui_volume_alarm:I

    sget v1, Lcom/android/systemui/miui/volume/R$drawable;->ic_miui_volume_alarm_mute:I

    const/4 v2, 0x4

    invoke-direct {p0, v2, v0, v1, v4}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->addColumn(IIIZ)V

    sget v0, Lcom/android/systemui/miui/volume/R$drawable;->ic_miui_volume_voice:I

    sget v1, Lcom/android/systemui/miui/volume/R$drawable;->ic_miui_volume_voice_mute:I

    invoke-direct {p0, v4, v0, v1, v4}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->addColumn(IIIZ)V

    sget v0, Lcom/android/systemui/miui/volume/R$drawable;->ic_miui_volume_voice:I

    sget v1, Lcom/android/systemui/miui/volume/R$drawable;->ic_miui_volume_voice_mute:I

    const/4 v2, 0x6

    invoke-direct {p0, v2, v0, v1, v4}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->addColumn(IIIZ)V

    :cond_0
    :goto_0
    sget v0, Lcom/android/systemui/miui/volume/R$drawable;->ic_miui_volume_media:I

    sget v1, Lcom/android/systemui/miui/volume/R$drawable;->ic_miui_volume_media_mute:I

    invoke-direct {p0, v6, v0, v1, v5}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->addTempColumn(IIIZ)V

    invoke-direct {p0, v4, v4, v5}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->updateExpandedH(ZZZ)V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->addExistingColumns()V

    goto :goto_0
.end method

.method private onStateChangedH(Lcom/android/systemui/plugins/VolumeDialogController$State;)V
    .locals 12

    const/4 v11, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mDialogView:Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;

    invoke-virtual {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;->isAnimating()Z

    move-result v6

    sget-boolean v0, Lcom/android/systemui/miui/volume/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onStateChangedH animating="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    if-eqz v6, :cond_1

    iput-boolean v4, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mPendingStateChanged:Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mDynamic:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    const/4 v9, 0x0

    :goto_0
    iget-object v0, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v9, v0, :cond_4

    iget-object v0, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    iget-object v0, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    iget-boolean v0, v10, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->dynamic:Z

    if-nez v0, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mDynamic:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    invoke-direct {p0, v1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->findColumn(I)Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;

    move-result-object v0

    if-nez v0, :cond_2

    sget v2, Lcom/android/systemui/miui/volume/R$drawable;->ic_miui_volume_media:I

    sget v3, Lcom/android/systemui/miui/volume/R$drawable;->ic_miui_volume_media_mute:I

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->addColumn(IIIZZ)V

    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mActiveStream:I

    iget v2, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->activeStream:I

    if-eq v0, v2, :cond_5

    iget v0, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->activeStream:I

    iput v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mActiveStream:I

    invoke-direct {p0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->getActiveColumn()Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->updateColumnH(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)V

    invoke-virtual {p0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->rescheduleTimeoutH()V

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mDialogView:Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;

    iget v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mActiveStream:I

    if-eqz v2, :cond_7

    iget v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mActiveStream:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_6

    :goto_2
    invoke-virtual {v0, v4}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;->updateFooterVisibility(Z)V

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mColumns:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;

    invoke-direct {p0, v7}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->updateVolumeColumnH(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)V

    goto :goto_3

    :cond_6
    move v4, v11

    goto :goto_2

    :cond_7
    move v4, v11

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mTempColumn:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;

    invoke-direct {p0, v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->updateVolumeColumnH(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)V

    return-void
.end method

.method private recheckH(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)V
    .locals 5

    if-nez p1, :cond_1

    sget-boolean v2, Lcom/android/systemui/miui/volume/Util;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "recheckH ALL"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->trimObsoleteH()V

    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mColumns:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;

    invoke-direct {p0, v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->updateVolumeColumnH(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)V

    goto :goto_0

    :cond_1
    sget-boolean v2, Lcom/android/systemui/miui/volume/Util;->DEBUG:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "recheckH "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get14(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->updateVolumeColumnH(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)V

    :cond_3
    return-void
.end method

.method private recordCountIfNeed(I)V
    .locals 6

    iget v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mLockRecordTypes:I

    and-int/2addr v2, p1

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mLockRecordTypes:I

    or-int/2addr v2, p1

    iput v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mLockRecordTypes:I

    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mHandler:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$H;

    const/16 v3, 0x9

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    iput p1, v1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mHandler:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$H;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v1, v4, v5}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    :goto_0
    if-eqz v0, :cond_0

    const-string/jumbo v2, "systemui_volume_dialog"

    invoke-static {v2, v0}, Lcom/android/systemui/miui/analytics/AnalyticsWrapper;->recordCountEventAnonymous(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :sswitch_0
    const-string/jumbo v0, "volume_adjust_by_key"

    goto :goto_0

    :sswitch_1
    iget-boolean v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mExpanded:Z

    if-eqz v2, :cond_1

    const-string/jumbo v0, "volume_media_volume_adjust_by_slide"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "volume_adjust_by_slide"

    goto :goto_0

    :sswitch_2
    const-string/jumbo v0, "volume_ring_volume_adjust_by_slide"

    goto :goto_0

    :sswitch_3
    const-string/jumbo v0, "volume_alarm_volume_adjust_by_slide"

    goto :goto_0

    :sswitch_4
    const-string/jumbo v0, "volume_remote_volume_adjust_by_slide"

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
    .end sparse-switch
.end method

.method private recordVolumeChanged(IZ)V
    .locals 3

    if-eqz p2, :cond_0

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->recordCountIfNeed(I)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mColumns:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;

    invoke-static {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get14(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)I

    move-result v2

    if-ne v2, p1, :cond_1

    invoke-static {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get15(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mDynamic:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x10

    invoke-direct {p0, v2}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->recordCountIfNeed(I)V

    return-void

    :cond_2
    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->recordCountIfNeed(I)V

    :cond_3
    :goto_0
    return-void

    :pswitch_1
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->recordCountIfNeed(I)V

    goto :goto_0

    :pswitch_2
    const/16 v2, 0x8

    invoke-direct {p0, v2}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->recordCountIfNeed(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setStreamImportantH(IZ)V
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mColumns:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;

    invoke-static {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get14(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-static {v0, p2}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-set9(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;Z)Z

    return-void

    :cond_1
    return-void
.end method

.method private setupWindowAttributes()V
    .locals 7

    const/16 v6, 0x30

    const/4 v5, -0x1

    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mWindow:Landroid/view/Window;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mWindow:Landroid/view/Window;

    const v3, 0xc0428

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mWindow:Landroid/view/Window;

    const/high16 v3, 0x800000

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mWindow:Landroid/view/Window;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mWindow:Landroid/view/Window;

    const/16 v3, 0x40

    invoke-virtual {v2, v3}, Landroid/view/Window;->addPrivateFlags(I)V

    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mWindowType:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, -0x3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const-class v2, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mWindow:Landroid/view/Window;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/Window;->setDimAmount(F)V

    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v2, v6}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method

.method private shouldBeVisibleH(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;Z)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get14(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mExpanded:Z

    if-nez v1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mShowA11yStream:Z

    :cond_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mDynamic:Landroid/util/SparseBooleanArray;

    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get14(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mExpanded:Z

    if-eqz v1, :cond_2

    return v0

    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mExpanded:Z

    if-eqz v1, :cond_5

    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get17(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5

    :cond_3
    const/4 p2, 0x1

    :cond_4
    :goto_0
    return p2

    :cond_5
    iget-boolean v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mExpanded:Z

    if-eqz v1, :cond_6

    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get8(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Z

    move-result v1

    if-nez v1, :cond_3

    if-nez p2, :cond_3

    :cond_6
    iget-boolean v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mExpanded:Z

    if-eqz v1, :cond_4

    move p2, v0

    goto :goto_0
.end method

.method private shouldTempBeVisible()Z
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "shouldTempBeVisible mExpanded:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mExpanded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mActiveStream:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mActiveStream:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mShowA11yStream:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mShowA11yStream:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " isMusicActive:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mExpanded:Z

    if-eqz v0, :cond_0

    return v3

    :cond_0
    iget v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mActiveStream:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    return v0

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mShowA11yStream:Z

    return v0
.end method

.method private showH(I)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mKeyguard:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->needSkipVolumeDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/systemui/statistic/ScenarioConstants;->SCENARIO_VOLUME_DIALOG_SHOW:Lcom/android/systemui/statistic/ScenarioTrackUtil$SystemUIEventScenario;

    invoke-static {v0}, Lcom/android/systemui/statistic/ScenarioTrackUtil;->beginScenario(Lcom/android/systemui/statistic/ScenarioTrackUtil$SystemUIEventScenario;)V

    sget-boolean v0, Lcom/android/systemui/miui/volume/Util;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showH r="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/volume/Events;->DISMISS_REASONS:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mHandler:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$H;

    invoke-virtual {v0, v3}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mHandler:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$H;

    invoke-virtual {v0, v5}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$H;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->rescheduleTimeoutH()V

    iget-boolean v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mShowing:Z

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iput-boolean v3, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mShowing:Z

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mContext:Landroid/content/Context;

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mKeyguard:Landroid/app/KeyguardManager;

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v4, v1}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v0, v3}, Lcom/android/systemui/plugins/VolumeDialogController;->notifyVisible(Z)V

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mDialogView:Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;

    invoke-virtual {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;->showH()V

    return-void
.end method

.method private showSafetyWarningH(I)V
    .locals 5

    const/4 v4, 0x0

    and-int/lit16 v0, p1, 0x401

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mShowing:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mSafetyWarningLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    new-instance v0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$8;

    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v3}, Lcom/android/systemui/plugins/VolumeDialogController;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$8;-><init>(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;Landroid/content/Context;Landroid/media/AudioManager;)V

    iput-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SafetyWarningDialog;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    invoke-direct {p0, v4}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->recheckH(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->rescheduleTimeoutH()V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private trimObsoleteH()V
    .locals 4

    sget-boolean v2, Lcom/android/systemui/miui/volume/Util;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "trimObsoleteH"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mColumns:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_0
    if-ltz v1, :cond_3

    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mColumns:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;

    invoke-static {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get13(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get13(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->dynamic:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mDynamic:Landroid/util/SparseBooleanArray;

    invoke-static {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get14(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mColumns:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mDialogColumns:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumns;

    invoke-static {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get17(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumns;->removeView(Landroid/view/View;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private unlockRecordType(I)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mLockRecordTypes:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mLockRecordTypes:I

    return-void
.end method

.method private updateColumnH(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)V
    .locals 6

    sget-boolean v4, Lcom/android/systemui/miui/volume/Util;->DEBUG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "updateColumnH"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v4, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mShowing:Z

    if-nez v4, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->trimObsoleteH()V

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->updateTempColumn()V

    iget-object v4, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mColumns:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;

    if-ne v0, p1, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-direct {p0, v0, v2}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->shouldBeVisibleH(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;Z)Z

    move-result v3

    iget-boolean v4, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mExpanded:Z

    if-nez v4, :cond_3

    invoke-static {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get8(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get17(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Landroid/view/View;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/android/systemui/miui/volume/Util;->setVisOrInvis(Landroid/view/View;Z)V

    :goto_2
    invoke-static {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get12(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Landroid/widget/SeekBar;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->updateColumnsSizeH(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    invoke-static {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get17(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Landroid/view/View;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/android/systemui/miui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    goto :goto_2

    :cond_4
    return-void
.end method

.method private updateColumnIconH(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)V
    .locals 3

    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get10(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)I

    move-result v1

    invoke-static {p1, v1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-set7(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;I)I

    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get9(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)I

    move-result v1

    invoke-static {p1, v1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-set6(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;I)I

    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get14(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)I

    move-result v1

    iget v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mActiveStream:I

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get14(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v0

    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get14(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/android/systemui/miui/volume/R$drawable;->ic_miui_volume_speaker:I

    invoke-static {p1, v1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-set7(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;I)I

    sget v1, Lcom/android/systemui/miui/volume/R$drawable;->ic_miui_volume_speaker_mute:I

    invoke-static {p1, v1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-set6(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;I)I

    :cond_0
    and-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_1

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_2

    :cond_1
    sget v1, Lcom/android/systemui/miui/volume/R$drawable;->ic_miui_volume_headset:I

    invoke-static {p1, v1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-set7(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;I)I

    sget v1, Lcom/android/systemui/miui/volume/R$drawable;->ic_miui_volume_headset_mute:I

    invoke-static {p1, v1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-set6(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;I)I

    :cond_2
    return-void
.end method

.method private updateColumnsSizeH(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mExpanded:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/android/systemui/miui/volume/R$dimen;->miui_volume_column_width_expanded:I

    :goto_0
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mExpanded:Z

    if-eqz v1, :cond_1

    sget v1, Lcom/android/systemui/miui/volume/R$dimen;->miui_volume_column_height_expanded:I

    :goto_1
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mExpanded:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mActiveStream:I

    if-nez v1, :cond_2

    sget v1, Lcom/android/systemui/miui/volume/R$dimen;->miui_volume_column_margin_horizontal_expanded_voice:I

    :goto_2
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    return-void

    :cond_0
    sget v1, Lcom/android/systemui/miui/volume/R$dimen;->miui_volume_column_width:I

    goto :goto_0

    :cond_1
    sget v1, Lcom/android/systemui/miui/volume/R$dimen;->miui_volume_column_height:I

    goto :goto_1

    :cond_2
    sget v1, Lcom/android/systemui/miui/volume/R$dimen;->miui_volume_column_margin_horizontal_expanded:I

    goto :goto_2

    :cond_3
    sget v1, Lcom/android/systemui/miui/volume/R$dimen;->miui_volume_column_margin_horizontal:I

    goto :goto_2
.end method

.method private updateDialogWindowH(Z)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x2

    iget-boolean v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mExpanded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mWindow:Landroid/view/Window;

    iget-boolean v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mExpanded:Z

    if-eqz v0, :cond_1

    xor-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_1

    const v0, 0x3e4ccccd    # 0.2f

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/Window;->setDimAmount(F)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateExpandedH(ZZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->updateExpandedH(ZZZ)V

    return-void
.end method

.method private updateExpandedH(ZZZ)V
    .locals 4

    iget-boolean v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mExpanded:Z

    if-ne v1, p1, :cond_0

    xor-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mExpanded:Z

    sget-boolean v1, Lcom/android/systemui/miui/volume/Util;->DEBUG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateExpandedH "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mDialogView:Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;

    xor-int/lit8 v2, p2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;->updateExpanded(ZZ)V

    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mDialogColumns:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumns;

    iget-boolean v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mExpanded:Z

    invoke-virtual {v1, v2}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumns;->updateExpandedH(Z)V

    invoke-direct {p0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->getActiveColumn()Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->updateColumnH(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)V

    invoke-direct {p0, p2}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->updateDialogWindowH(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->rescheduleTimeoutH()V

    return-void
.end method

.method private updateTempColumn()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mTempColumnContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->shouldTempBeVisible()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/miui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    return-void
.end method

.method private updateVolumeColumnH(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)V
    .locals 10

    const/4 v5, 0x2

    const/4 v6, 0x0

    sget-boolean v7, Lcom/android/systemui/miui/volume/Util;->DEBUG:Z

    if-eqz v7, :cond_0

    sget-object v7, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateVolumeColumnH s="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get14(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v7, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    if-nez v7, :cond_1

    return-void

    :cond_1
    iget-object v7, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget-object v7, v7, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get14(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    if-nez v2, :cond_2

    return-void

    :cond_2
    invoke-static {p1, v2}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-set15(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    iget v7, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    if-lez v7, :cond_3

    iget v7, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    invoke-static {p1, v7}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-set12(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;I)I

    :cond_3
    iget v7, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get11(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)I

    move-result v8

    if-ne v7, v8, :cond_4

    const/4 v7, -0x1

    invoke-static {p1, v7}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-set13(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;I)I

    :cond_4
    iget-boolean v3, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muted:Z

    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get14(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)I

    move-result v7

    if-ne v7, v5, :cond_5

    iget-object v7, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mDialogView:Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;

    invoke-virtual {v7}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;->isOffMode()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_5

    const/4 v3, 0x1

    :cond_5
    iget v7, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMax:I

    mul-int/lit8 v1, v7, 0x64

    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get12(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Landroid/widget/SeekBar;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/SeekBar;->getMax()I

    move-result v7

    if-eq v1, v7, :cond_6

    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get12(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Landroid/widget/SeekBar;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/widget/SeekBar;->setMax(I)V

    :cond_6
    invoke-direct {p0, p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->updateColumnIconH(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)V

    iget-boolean v7, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mAutomute:Z

    if-eqz v7, :cond_8

    iget v7, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    if-nez v7, :cond_8

    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get6(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)I

    move-result v0

    :goto_0
    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get2(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)I

    move-result v7

    if-eq v0, v7, :cond_7

    invoke-static {p1, v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-set2(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;I)I

    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get5(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_7
    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get6(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)I

    move-result v7

    if-ne v0, v7, :cond_a

    :goto_1
    invoke-static {p1, v5}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-set8(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;I)I

    if-eqz v3, :cond_c

    iget-object v5, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get14(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v4

    :goto_2
    invoke-direct {p0, p1, v3, v4}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->updateVolumeColumnSliderH(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;ZI)V

    return-void

    :cond_8
    if-eqz v3, :cond_9

    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get6(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)I

    move-result v0

    goto :goto_0

    :cond_9
    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get7(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)I

    move-result v0

    goto :goto_0

    :cond_a
    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get7(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)I

    move-result v5

    if-ne v0, v5, :cond_b

    const/4 v5, 0x1

    goto :goto_1

    :cond_b
    move v5, v6

    goto :goto_1

    :cond_c
    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get13(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v5

    iget v4, v5, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    goto :goto_2
.end method

.method private updateVolumeColumnSliderH(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;ZI)V
    .locals 12

    if-eqz p2, :cond_1

    iget-object v5, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mMutedColorList:Landroid/content/res/ColorStateList;

    :goto_0
    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get4(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Landroid/content/res/ColorStateList;

    move-result-object v6

    if-eq v6, v5, :cond_0

    invoke-static {p1, v5}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-set4(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get12(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Landroid/widget/SeekBar;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get12(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Landroid/widget/SeekBar;

    move-result-object v6

    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get13(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get15(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Z

    move-result v6

    if-eqz v6, :cond_2

    return-void

    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get12(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Landroid/widget/SeekBar;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get12(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Landroid/widget/SeekBar;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->getImpliedLevel(Landroid/widget/SeekBar;I)I

    move-result v2

    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get17(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_4

    const/4 v0, 0x1

    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get16(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    cmp-long v6, v6, v8

    if-gez v6, :cond_5

    const/4 v1, 0x1

    :goto_2
    iget-object v6, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mHandler:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$H;

    const/4 v7, 0x3

    invoke-virtual {v6, v7, p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$H;->removeMessages(ILjava/lang/Object;)V

    iget-boolean v6, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mShowing:Z

    if-eqz v6, :cond_6

    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    sget-boolean v6, Lcom/android/systemui/miui/volume/Util;->DEBUG:Z

    if-eqz v6, :cond_3

    sget-object v6, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "inGracePeriod"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v6, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mHandler:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$H;

    iget-object v7, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mHandler:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$H;

    const/4 v8, 0x3

    invoke-virtual {v7, v8, p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get16(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    add-long/2addr v8, v10

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$H;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void

    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    goto :goto_2

    :cond_6
    if-ne p3, v2, :cond_7

    iget-boolean v6, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mShowing:Z

    if-eqz v6, :cond_7

    if-eqz v0, :cond_7

    return-void

    :cond_7
    mul-int/lit8 v3, p3, 0x64

    if-eq v4, v3, :cond_9

    iget-boolean v6, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mShowing:Z

    if-eqz v6, :cond_b

    if-eqz v0, :cond_b

    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get0(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get0(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get1(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)I

    move-result v6

    if-ne v6, v3, :cond_8

    return-void

    :cond_8
    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get0(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    if-nez v6, :cond_a

    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get12(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Landroid/widget/SeekBar;

    move-result-object v6

    const-string/jumbo v7, "progress"

    const/4 v8, 0x2

    new-array v8, v8, [I

    const/4 v9, 0x0

    aput v4, v8, v9

    const/4 v9, 0x1

    aput v3, v8, v9

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-set0(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get0(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v6, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :goto_3
    invoke-static {p1, v3}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-set1(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;I)I

    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get0(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v8, 0x50

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get0(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->start()V

    :cond_9
    :goto_4
    return-void

    :cond_a
    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get0(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->cancel()V

    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get0(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [I

    const/4 v8, 0x0

    aput v4, v7, v8

    const/4 v8, 0x1

    aput v3, v7, v8

    invoke-virtual {v6, v7}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    goto :goto_3

    :cond_b
    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get0(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    if-eqz v6, :cond_c

    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get0(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_c
    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get12(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Landroid/widget/SeekBar;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v6, v3, v7}, Landroid/widget/ProgressBarCompat;->setProgress(Landroid/widget/ProgressBar;IZ)V

    goto :goto_4
.end method

.method private vibrateH()V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mAccessibility:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$Accessibility;

    invoke-virtual {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$Accessibility;->destory()V

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mControllerCallbackH:Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/VolumeDialogController;->removeCallback(Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;)V

    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mSilenceModeObserver:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$SilenceModeObserver;

    invoke-virtual {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$SilenceModeObserver;->unregister()V

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mRingerModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected dismissH(I)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mDialogView:Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;

    invoke-virtual {v1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mHandler:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$H;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$H;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mHandler:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$H;

    invoke-virtual {v1, v5}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$H;->removeMessages(I)V

    iget-boolean v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mShowing:Z

    if-nez v1, :cond_1

    return-void

    :cond_1
    sget-object v1, Lcom/android/systemui/statistic/ScenarioConstants;->SCENARIO_VOLUME_DIALOG_HIDE:Lcom/android/systemui/statistic/ScenarioTrackUtil$SystemUIEventScenario;

    invoke-static {v1}, Lcom/android/systemui/statistic/ScenarioTrackUtil;->beginScenario(Lcom/android/systemui/statistic/ScenarioTrackUtil$SystemUIEventScenario;)V

    iput-boolean v4, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mShowing:Z

    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x20

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    const-class v1, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$CustomDialog;

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/miui/volume/R$string;->volume_dialog_accessibility_dismissed_message:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mContext:Landroid/content/Context;

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v5, v2}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v1, v4}, Lcom/android/systemui/plugins/VolumeDialogController;->notifyVisible(Z)V

    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mDialogView:Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;

    new-instance v2, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$7;

    invoke-direct {v2, p0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$7;-><init>(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;->dismissH(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mSafetyWarningLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    if-eqz v1, :cond_4

    sget-boolean v1, Lcom/android/systemui/miui/volume/Util;->DEBUG:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "SafetyWarning dismissed"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    invoke-virtual {v1}, Lcom/android/systemui/volume/SafetyWarningDialog;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "  mShowing: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mShowing:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v0, "  mExpanded: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mExpanded:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v0, "  mActiveStream: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mActiveStream:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string/jumbo v0, "  mDynamic: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mDynamic:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string/jumbo v0, "  mAutomute: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mAutomute:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v0, "  mSilentMode: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mSilentMode:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v0, "  mAccessibility.mFeedbackEnabled: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mAccessibility:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$Accessibility;

    invoke-static {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$Accessibility;->-get0(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$Accessibility;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public getVersion()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public init(ILcom/android/systemui/plugins/VolumeDialog$Callback;)V
    .locals 7

    const/4 v4, 0x0

    iput p1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mWindowType:I

    invoke-direct {p0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->initDialog()V

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mAccessibility:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$Accessibility;

    invoke-virtual {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$Accessibility;->init()V

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mControllerCallbackH:Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mHandler:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$H;

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/plugins/VolumeDialogController;->addCallback(Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/VolumeDialogController;->getState()V

    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "sysui_show_full_zen"

    const/4 v5, 0x0

    aput-object v2, v1, v5

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v0, v6, Landroid/content/res/Configuration;->densityDpi:I

    iput v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mDensity:I

    iget v0, v6, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mOrientation:I

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/miui/volume/R$color;->miui_volume_disabled_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mMutedColorList:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/miui/volume/R$color;->miui_volume_tint_dark:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mIconTintDark:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mSilenceModeObserver:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$SilenceModeObserver;

    invoke-virtual {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$SilenceModeObserver;->init()V

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mSilenceModeObserver:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$SilenceModeObserver;

    invoke-virtual {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$SilenceModeObserver;->register()V

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mRingerModeChangedReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public onCreate(Landroid/content/Context;Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected rescheduleTimeoutH()V
    .locals 6

    const/4 v5, 0x2

    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mHandler:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$H;

    invoke-virtual {v1, v5}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$H;->removeMessages(I)V

    invoke-direct {p0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->computeTimeoutH()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mHandler:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$H;

    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mHandler:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$H;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    sget-boolean v1, Lcom/android/systemui/miui/volume/Util;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "rescheduleTimeout "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v1}, Lcom/android/systemui/plugins/VolumeDialogController;->userActivity()V

    return-void
.end method

.method public setAutomute(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mAutomute:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mAutomute:Z

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mHandler:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$H;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$H;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setSilentMode(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mSilentMode:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mSilentMode:Z

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mHandler:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$H;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$H;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setStreamImportant(IZ)V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mHandler:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$H;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v2, 0x5

    invoke-virtual {v1, v2, p1, v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
