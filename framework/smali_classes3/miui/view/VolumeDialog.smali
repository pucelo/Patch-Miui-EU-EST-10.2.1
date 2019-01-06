.class public Lmiui/view/VolumeDialog;
.super Ljava/lang/Object;
.source "VolumeDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/view/VolumeDialog$1;,
        Lmiui/view/VolumeDialog$2;,
        Lmiui/view/VolumeDialog$3;,
        Lmiui/view/VolumeDialog$CustomDialog;,
        Lmiui/view/VolumeDialog$H;,
        Lmiui/view/VolumeDialog$SafetyWarningDialog;,
        Lmiui/view/VolumeDialog$StreamState;,
        Lmiui/view/VolumeDialog$VolumeIconRes;,
        Lmiui/view/VolumeDialog$VolumePanelDelegate;,
        Lmiui/view/VolumeDialog$VolumeRow;,
        Lmiui/view/VolumeDialog$VolumeSeekBarChangeListener;,
        Lmiui/view/VolumeDialog$VolumeSeekbarProgress;
    }
.end annotation


# static fields
.field private static final LAYOUT_TRANSITION_ANIMATION_DURATION:I = 0xc8

.field private static final STREAM_DEVICES_CHANGED_ACTION:Ljava/lang/String; = "android.media.STREAM_DEVICES_CHANGED_ACTION"

.field private static final STREAM_MUTE_CHANGED_ACTION:Ljava/lang/String; = "android.media.STREAM_MUTE_CHANGED_ACTION"

.field private static final TAG:Ljava/lang/String; = "VolumeDialog"

.field private static final TYPE_FM:I = 0xa

.field private static final UPDATE_ANIMATION_DURATION:I = 0x50

.field private static final USER_ATTEMPT_GRACE_PERIOD:J = 0x3e8L

.field private static final VIBRATE_DELAY:I = 0x12c

.field private static final VOLUME_ICON_TYPE_ALARM:I = 0x0

.field private static final VOLUME_ICON_TYPE_BLUETOOTH:I = 0x1

.field private static final VOLUME_ICON_TYPE_FM:I = 0x8

.field private static final VOLUME_ICON_TYPE_HEADSET:I = 0x2

.field private static final VOLUME_ICON_TYPE_HIFI:I = 0x7

.field private static final VOLUME_ICON_TYPE_MEDIA:I = 0x3

.field private static final VOLUME_ICON_TYPE_PHONE:I = 0x4

.field private static final VOLUME_ICON_TYPE_RING:I = 0x5

.field private static final VOLUME_ICON_TYPE_SPEAKER:I = 0x6

.field private static final sVolumeIconTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lmiui/view/VolumeDialog$VolumeIconRes;",
            ">;"
        }
    .end annotation
.end field

.field static sVolumeSeekbarProgress:Lmiui/view/VolumeDialog$VolumeSeekbarProgress;


# instance fields
.field private final STREAM_VOLUME_ALIAS_DEFAULT:[I

.field private mActiveStream:I

.field private final mAm:Landroid/media/AudioManager;

.field private mBootBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mClickExpand:Landroid/view/View$OnClickListener;

.field private mCollapseTime:J

.field private final mContext:Landroid/content/Context;

.field private mDelegate:Lmiui/view/VolumeDialog$VolumePanelDelegate;

.field private mDialog:Lmiui/view/VolumeDialog$CustomDialog;

.field private mDialogContentView:Landroid/view/ViewGroup;

.field private mDialogShowTime:J

.field private mDialogView:Landroid/view/ViewGroup;

.field public mExpandAnimating:Z

.field private mExpandAnimator:Landroid/animation/ValueAnimator;

.field private mExpandButton:Landroid/widget/ImageButton;

.field public mExpanded:Z

.field private final mHandler:Lmiui/view/VolumeDialog$H;

.field private mInScreenshot:Z

.field private mLastStatus:Z

.field private mLayoutTransition:Landroid/animation/LayoutTransition;

.field private mRingerMode:I

.field private mRingerModeLayout:Lmiui/view/RingerModeLayout;

.field private final mRows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmiui/view/VolumeDialog$VolumeRow;",
            ">;"
        }
    .end annotation
.end field

.field private mSafetyWarning:Landroid/app/AlertDialog;

.field private final mSafetyWarningLock:Ljava/lang/Object;

.field private mShowing:Z

.field private mStatusBarHeight:I

.field private final mVibrator:Landroid/os/Vibrator;

.field private final mVolumeRowSpaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mVolumeRowViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lmiui/view/VolumeDialog;)Landroid/media/AudioManager;
    .registers 2

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mAm:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic -get1(Lmiui/view/VolumeDialog;)Landroid/content/BroadcastReceiver;
    .registers 2

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic -get10(Lmiui/view/VolumeDialog;)I
    .registers 2

    iget v0, p0, Lmiui/view/VolumeDialog;->mRingerMode:I

    return v0
.end method

.method static synthetic -get11(Lmiui/view/VolumeDialog;)Lmiui/view/RingerModeLayout;
    .registers 2

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mRingerModeLayout:Lmiui/view/RingerModeLayout;

    return-object v0
.end method

.method static synthetic -get12(Lmiui/view/VolumeDialog;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mRows:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get13(Lmiui/view/VolumeDialog;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mSafetyWarningLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get14()Ljava/util/Map;
    .registers 1

    sget-object v0, Lmiui/view/VolumeDialog;->sVolumeIconTypeMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get2(Lmiui/view/VolumeDialog;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lmiui/view/VolumeDialog;)Lmiui/view/VolumeDialog$VolumePanelDelegate;
    .registers 2

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mDelegate:Lmiui/view/VolumeDialog$VolumePanelDelegate;

    return-object v0
.end method

.method static synthetic -get4(Lmiui/view/VolumeDialog;)Landroid/view/ViewGroup;
    .registers 2

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic -get5(Lmiui/view/VolumeDialog;)J
    .registers 3

    iget-wide v0, p0, Lmiui/view/VolumeDialog;->mDialogShowTime:J

    return-wide v0
.end method

.method static synthetic -get6(Lmiui/view/VolumeDialog;)Landroid/view/ViewGroup;
    .registers 2

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic -get7(Lmiui/view/VolumeDialog;)Landroid/animation/ValueAnimator;
    .registers 2

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mExpandAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic -get8(Lmiui/view/VolumeDialog;)Lmiui/view/VolumeDialog$H;
    .registers 2

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    return-object v0
.end method

.method static synthetic -get9(Lmiui/view/VolumeDialog;)Z
    .registers 2

    iget-boolean v0, p0, Lmiui/view/VolumeDialog;->mLastStatus:Z

    return v0
.end method

.method static synthetic -set0(Lmiui/view/VolumeDialog;Z)Z
    .registers 2

    iput-boolean p1, p0, Lmiui/view/VolumeDialog;->mInScreenshot:Z

    return p1
.end method

.method static synthetic -set1(Lmiui/view/VolumeDialog;Z)Z
    .registers 2

    iput-boolean p1, p0, Lmiui/view/VolumeDialog;->mLastStatus:Z

    return p1
.end method

.method static synthetic -set2(Lmiui/view/VolumeDialog;I)I
    .registers 2

    iput p1, p0, Lmiui/view/VolumeDialog;->mRingerMode:I

    return p1
.end method

.method static synthetic -set3(Lmiui/view/VolumeDialog;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 2

    iput-object p1, p0, Lmiui/view/VolumeDialog;->mSafetyWarning:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -wrap0(Landroid/widget/SeekBar;I)I
    .registers 3

    invoke-static {p0, p1}, Lmiui/view/VolumeDialog;->getImpliedLevel(Landroid/widget/SeekBar;I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lmiui/view/VolumeDialog;)V
    .registers 1

    invoke-direct {p0}, Lmiui/view/VolumeDialog;->dismissH()V

    return-void
.end method

.method static synthetic -wrap10(Lmiui/view/VolumeDialog;I)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/view/VolumeDialog;->updateLayoutDirectionH(I)V

    return-void
.end method

.method static synthetic -wrap11(Lmiui/view/VolumeDialog;)V
    .registers 1

    invoke-direct {p0}, Lmiui/view/VolumeDialog;->updateRowsVisibilityByExpandH()V

    return-void
.end method

.method static synthetic -wrap12(Lmiui/view/VolumeDialog;)V
    .registers 1

    invoke-direct {p0}, Lmiui/view/VolumeDialog;->vibrateH()V

    return-void
.end method

.method static synthetic -wrap2(Lmiui/view/VolumeDialog;Lmiui/view/VolumeDialog$VolumeRow;)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/view/VolumeDialog;->recheckH(Lmiui/view/VolumeDialog$VolumeRow;)V

    return-void
.end method

.method static synthetic -wrap3(Lmiui/view/VolumeDialog;)V
    .registers 1

    invoke-direct {p0}, Lmiui/view/VolumeDialog;->rescheduleTimeoutH()V

    return-void
.end method

.method static synthetic -wrap4(Lmiui/view/VolumeDialog;I)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/view/VolumeDialog;->showH(I)V

    return-void
.end method

.method static synthetic -wrap5(Lmiui/view/VolumeDialog;I)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/view/VolumeDialog;->showSafetyWarningH(I)V

    return-void
.end method

.method static synthetic -wrap6(Lmiui/view/VolumeDialog;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lmiui/view/VolumeDialog;->stateChangedH(II)V

    return-void
.end method

.method static synthetic -wrap7(Lmiui/view/VolumeDialog;I)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/view/VolumeDialog;->streamDeviceChanged(I)V

    return-void
.end method

.method static synthetic -wrap8(Lmiui/view/VolumeDialog;)V
    .registers 1

    invoke-direct {p0}, Lmiui/view/VolumeDialog;->updateDialogBottomMarginH()V

    return-void
.end method

.method static synthetic -wrap9(Lmiui/view/VolumeDialog;)V
    .registers 1

    invoke-direct {p0}, Lmiui/view/VolumeDialog;->updateExpandButtonH()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 10

    const v9, 0x1102004e

    const v8, 0x1102004d

    const v7, 0x1102004c

    const/4 v6, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/view/VolumeDialog;->sVolumeIconTypeMap:Ljava/util/Map;

    new-instance v0, Lmiui/view/VolumeDialog$VolumeSeekbarProgress;

    const v1, 0x110200fe

    const v2, 0x11020100

    invoke-direct {v0, v1, v2, v6}, Lmiui/view/VolumeDialog$VolumeSeekbarProgress;-><init>(IILmiui/view/VolumeDialog$VolumeSeekbarProgress;)V

    sput-object v0, Lmiui/view/VolumeDialog;->sVolumeSeekbarProgress:Lmiui/view/VolumeDialog$VolumeSeekbarProgress;

    sget-object v0, Lmiui/view/VolumeDialog;->sVolumeIconTypeMap:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmiui/view/VolumeDialog$VolumeIconRes;

    const v3, 0x11020038

    const v4, 0x11020039

    const v5, 0x11020037

    invoke-direct {v2, v3, v4, v5, v6}, Lmiui/view/VolumeDialog$VolumeIconRes;-><init>(IIILmiui/view/VolumeDialog$VolumeIconRes;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/view/VolumeDialog;->sVolumeIconTypeMap:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmiui/view/VolumeDialog$VolumeIconRes;

    const v3, 0x1102003d

    const v4, 0x1102003e

    const v5, 0x1102003c

    invoke-direct {v2, v3, v4, v5, v6}, Lmiui/view/VolumeDialog$VolumeIconRes;-><init>(IIILmiui/view/VolumeDialog$VolumeIconRes;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/view/VolumeDialog;->sVolumeIconTypeMap:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmiui/view/VolumeDialog$VolumeIconRes;

    const v3, 0x11020045

    const v4, 0x11020046

    const v5, 0x11020044

    invoke-direct {v2, v3, v4, v5, v6}, Lmiui/view/VolumeDialog$VolumeIconRes;-><init>(IIILmiui/view/VolumeDialog$VolumeIconRes;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/view/VolumeDialog;->sVolumeIconTypeMap:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmiui/view/VolumeDialog$VolumeIconRes;

    invoke-direct {v2, v8, v9, v7, v6}, Lmiui/view/VolumeDialog$VolumeIconRes;-><init>(IIILmiui/view/VolumeDialog$VolumeIconRes;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/view/VolumeDialog;->sVolumeIconTypeMap:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmiui/view/VolumeDialog$VolumeIconRes;

    const v3, 0x11020053

    const v4, 0x11020054

    const v5, 0x11020052

    invoke-direct {v2, v3, v4, v5, v6}, Lmiui/view/VolumeDialog$VolumeIconRes;-><init>(IIILmiui/view/VolumeDialog$VolumeIconRes;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/view/VolumeDialog;->sVolumeIconTypeMap:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmiui/view/VolumeDialog$VolumeIconRes;

    const v3, 0x11020057

    const v4, 0x1102005b

    const v5, 0x11020056

    invoke-direct {v2, v3, v4, v5, v6}, Lmiui/view/VolumeDialog$VolumeIconRes;-><init>(IIILmiui/view/VolumeDialog$VolumeIconRes;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/view/VolumeDialog;->sVolumeIconTypeMap:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmiui/view/VolumeDialog$VolumeIconRes;

    const v3, 0x1102005e

    const v4, 0x1102005f

    const v5, 0x1102005d

    invoke-direct {v2, v3, v4, v5, v6}, Lmiui/view/VolumeDialog$VolumeIconRes;-><init>(IIILmiui/view/VolumeDialog$VolumeIconRes;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/view/VolumeDialog;->sVolumeIconTypeMap:Ljava/util/Map;

    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v0, "scorpio"

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_da

    const-string/jumbo v0, "lithium"

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f3

    :cond_da
    new-instance v0, Lmiui/view/VolumeDialog$VolumeIconRes;

    invoke-direct {v0, v8, v9, v7, v6}, Lmiui/view/VolumeDialog$VolumeIconRes;-><init>(IIILmiui/view/VolumeDialog$VolumeIconRes;)V

    :goto_df
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/view/VolumeDialog;->sVolumeIconTypeMap:Ljava/util/Map;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmiui/view/VolumeDialog$VolumeIconRes;

    invoke-direct {v2, v8, v9, v7, v6}, Lmiui/view/VolumeDialog$VolumeIconRes;-><init>(IIILmiui/view/VolumeDialog$VolumeIconRes;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_f3
    new-instance v0, Lmiui/view/VolumeDialog$VolumeIconRes;

    const v3, 0x11020049

    const v4, 0x1102004a

    const v5, 0x11020048

    invoke-direct {v0, v3, v4, v5, v6}, Lmiui/view/VolumeDialog$VolumeIconRes;-><init>(IIILmiui/view/VolumeDialog$VolumeIconRes;)V

    goto :goto_df
.end method

.method public constructor <init>(Landroid/content/Context;Lmiui/view/VolumeDialog$VolumePanelDelegate;)V
    .registers 9

    const/4 v4, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmiui/view/VolumeDialog$H;

    invoke-direct {v0, p0}, Lmiui/view/VolumeDialog$H;-><init>(Lmiui/view/VolumeDialog;)V

    iput-object v0, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/view/VolumeDialog;->mRows:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/view/VolumeDialog;->mVolumeRowViews:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/view/VolumeDialog;->mVolumeRowSpaces:Ljava/util/List;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/view/VolumeDialog;->mSafetyWarningLock:Ljava/lang/Object;

    iput v1, p0, Lmiui/view/VolumeDialog;->mRingerMode:I

    iput v1, p0, Lmiui/view/VolumeDialog;->mStatusBarHeight:I

    new-instance v0, Lmiui/view/VolumeDialog$1;

    invoke-direct {v0, p0}, Lmiui/view/VolumeDialog$1;-><init>(Lmiui/view/VolumeDialog;)V

    iput-object v0, p0, Lmiui/view/VolumeDialog;->mBootBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_86

    iput-object v0, p0, Lmiui/view/VolumeDialog;->STREAM_VOLUME_ALIAS_DEFAULT:[I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lmiui/view/VolumeDialog;->mDialogShowTime:J

    new-instance v0, Lmiui/view/VolumeDialog$2;

    invoke-direct {v0, p0}, Lmiui/view/VolumeDialog$2;-><init>(Lmiui/view/VolumeDialog;)V

    iput-object v0, p0, Lmiui/view/VolumeDialog;->mClickExpand:Landroid/view/View$OnClickListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/view/VolumeDialog;->mInScreenshot:Z

    new-instance v0, Lmiui/view/VolumeDialog$3;

    invoke-direct {v0, p0}, Lmiui/view/VolumeDialog$3;-><init>(Lmiui/view/VolumeDialog;)V

    iput-object v0, p0, Lmiui/view/VolumeDialog;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lmiui/view/VolumeDialog;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lmiui/view/VolumeDialog;->mDelegate:Lmiui/view/VolumeDialog$VolumePanelDelegate;

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lmiui/view/VolumeDialog;->mVibrator:Landroid/os/Vibrator;

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lmiui/view/VolumeDialog;->mAm:Landroid/media/AudioManager;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lmiui/view/VolumeDialog;->mBootBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void

    nop

    :array_86
    .array-data 4
        0x0
        0x2
        0x2
        0x3
        0x4
        0x2
        0x6
        0x2
        0x2
        0x3
        0xa
    .end array-data
.end method

.method private addRow(IIZ)V
    .registers 10

    invoke-direct {p0, p1, p2, p3}, Lmiui/view/VolumeDialog;->initRow(IIZ)Lmiui/view/VolumeDialog$VolumeRow;

    move-result-object v2

    iget-object v4, p0, Lmiui/view/VolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_38

    new-instance v3, Landroid/view/View;

    iget-object v4, p0, Lmiui/view/VolumeDialog;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 v4, 0x1020000

    invoke-virtual {v3, v4}, Landroid/view/View;->setId(I)V

    iget-object v4, p0, Lmiui/view/VolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x110b003b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v1, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v4, p0, Lmiui/view/VolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lmiui/view/VolumeDialog;->mVolumeRowSpaces:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v2, v3}, Lmiui/view/VolumeDialog$VolumeRow;->-set10(Lmiui/view/VolumeDialog$VolumeRow;Landroid/view/View;)Landroid/view/View;

    :cond_38
    iget-object v4, p0, Lmiui/view/VolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-static {v2}, Lmiui/view/VolumeDialog$VolumeRow;->-get14(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v4, p0, Lmiui/view/VolumeDialog;->mVolumeRowViews:Ljava/util/List;

    invoke-static {v2}, Lmiui/view/VolumeDialog$VolumeRow;->-get14(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lmiui/view/VolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private adjustDialogPosition()V
    .registers 5

    sget-boolean v2, Lmiui/util/CustomizeUtil;->HAS_NOTCH:Z

    if-eqz v2, :cond_26

    iget-object v2, p0, Lmiui/view/VolumeDialog;->mDialog:Lmiui/view/VolumeDialog$CustomDialog;

    invoke-virtual {v2}, Lmiui/view/VolumeDialog$CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v2, p0, Lmiui/view/VolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_27

    invoke-direct {p0}, Lmiui/view/VolumeDialog;->getStatusBarHeight()I

    move-result v2

    :goto_21
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_26
    return-void

    :cond_27
    const/4 v2, 0x0

    goto :goto_21
.end method

.method private computeTimeoutH()I
    .registers 2

    iget-boolean v0, p0, Lmiui/view/VolumeDialog;->mExpanded:Z

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lmiui/view/VolumeDialog;->mExpandAnimating:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mRingerModeLayout:Lmiui/view/RingerModeLayout;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mRingerModeLayout:Lmiui/view/RingerModeLayout;

    iget-boolean v0, v0, Lmiui/view/RingerModeLayout;->mSilenceModeExpanded:Z

    if-eqz v0, :cond_15

    :cond_12
    const/16 v0, 0x1770

    return v0

    :cond_15
    const/16 v0, 0xbb8

    return v0
.end method

.method private dismissH()V
    .registers 5

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lmiui/view/VolumeDialog$H;->removeMessages(I)V

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/view/VolumeDialog$H;->removeMessages(I)V

    iget-boolean v0, p0, Lmiui/view/VolumeDialog;->mShowing:Z

    if-nez v0, :cond_13

    return-void

    :cond_13
    iput-boolean v3, p0, Lmiui/view/VolumeDialog;->mShowing:Z

    iget-object v1, p0, Lmiui/view/VolumeDialog;->mSafetyWarningLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_18
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mSafetyWarning:Landroid/app/AlertDialog;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mSafetyWarning:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_52

    :cond_21
    monitor-exit v1

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mDialog:Lmiui/view/VolumeDialog$CustomDialog;

    invoke-virtual {v0}, Lmiui/view/VolumeDialog$CustomDialog;->dismiss()V

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mExpandAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mDelegate:Lmiui/view/VolumeDialog$VolumePanelDelegate;

    invoke-interface {v0, v3}, Lmiui/view/VolumeDialog$VolumePanelDelegate;->notifyVolumeControllerVisible(Z)V

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mRingerModeLayout:Lmiui/view/RingerModeLayout;

    invoke-virtual {v0}, Lmiui/view/RingerModeLayout;->cleanUp()V

    iput-object v2, p0, Lmiui/view/VolumeDialog;->mRingerModeLayout:Lmiui/view/RingerModeLayout;

    iput-object v2, p0, Lmiui/view/VolumeDialog;->mExpandAnimator:Landroid/animation/ValueAnimator;

    iput-object v2, p0, Lmiui/view/VolumeDialog;->mDialog:Lmiui/view/VolumeDialog$CustomDialog;

    iput-object v2, p0, Lmiui/view/VolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    iput-object v2, p0, Lmiui/view/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    iput-object v2, p0, Lmiui/view/VolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mVolumeRowViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mVolumeRowSpaces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void

    :catchall_52
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private expandVolumeBar(Z)V
    .registers 6

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mExpandAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lmiui/view/VolumeDialog$6;

    invoke-direct {v1, p0}, Lmiui/view/VolumeDialog$6;-><init>(Lmiui/view/VolumeDialog;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mExpandAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lmiui/view/VolumeDialog$7;

    invoke-direct {v1, p0, p1}, Lmiui/view/VolumeDialog$7;-><init>(Lmiui/view/VolumeDialog;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mExpandAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mExpandAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mExpandAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private findRow(I)Lmiui/view/VolumeDialog$VolumeRow;
    .registers 5

    iget-object v2, p0, Lmiui/view/VolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/view/VolumeDialog$VolumeRow;

    invoke-static {v0}, Lmiui/view/VolumeDialog$VolumeRow;->-get11(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v2

    if-ne v2, p1, :cond_6

    return-object v0

    :cond_19
    const/4 v2, 0x0

    return-object v2
.end method

.method private getConservativeCollapseDuration()I
    .registers 2

    const/16 v0, 0x258

    return v0
.end method

.method private static getImpliedLevel(Landroid/widget/SeekBar;I)I
    .registers 7

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    div-int/lit8 v3, v1, 0x64

    add-int/lit8 v2, v3, -0x1

    if-nez p1, :cond_c

    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    if-ne p1, v1, :cond_11

    div-int/lit8 v0, v1, 0x64

    goto :goto_b

    :cond_11
    int-to-float v3, p1

    int-to-float v4, v1

    div-float/2addr v3, v4

    int-to-float v4, v2

    mul-float/2addr v3, v4

    float-to-int v3, v3

    add-int/lit8 v0, v3, 0x1

    goto :goto_b
.end method

.method private getMappedStream(I)I
    .registers 3

    iget-object v0, p0, Lmiui/view/VolumeDialog;->STREAM_VOLUME_ALIAS_DEFAULT:[I

    array-length v0, v0

    if-lt p1, v0, :cond_7

    const/4 v0, 0x3

    return v0

    :cond_7
    iget-object v0, p0, Lmiui/view/VolumeDialog;->STREAM_VOLUME_ALIAS_DEFAULT:[I

    aget v0, v0, p1

    return v0
.end method

.method private getStatusBarHeight()I
    .registers 3

    iget v1, p0, Lmiui/view/VolumeDialog;->mStatusBarHeight:I

    if-gez v1, :cond_13

    iget-object v1, p0, Lmiui/view/VolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105018e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lmiui/view/VolumeDialog;->mStatusBarHeight:I

    :cond_13
    iget v1, p0, Lmiui/view/VolumeDialog;->mStatusBarHeight:I

    return v1
.end method

.method private initRow(IIZ)Lmiui/view/VolumeDialog$VolumeRow;
    .registers 8

    const/4 v3, 0x0

    new-instance v0, Lmiui/view/VolumeDialog$VolumeRow;

    invoke-direct {v0, v3}, Lmiui/view/VolumeDialog$VolumeRow;-><init>(Lmiui/view/VolumeDialog$VolumeRow;)V

    invoke-static {v0, p1}, Lmiui/view/VolumeDialog$VolumeRow;->-set12(Lmiui/view/VolumeDialog$VolumeRow;I)I

    invoke-static {v0, p2}, Lmiui/view/VolumeDialog$VolumeRow;->-set5(Lmiui/view/VolumeDialog$VolumeRow;I)I

    invoke-static {v0, p2}, Lmiui/view/VolumeDialog$VolumeRow;->-set7(Lmiui/view/VolumeDialog$VolumeRow;I)I

    invoke-static {v0, p3}, Lmiui/view/VolumeDialog$VolumeRow;->-set6(Lmiui/view/VolumeDialog$VolumeRow;Z)Z

    iget-object v1, p0, Lmiui/view/VolumeDialog;->mDialog:Lmiui/view/VolumeDialog$CustomDialog;

    invoke-virtual {v1}, Lmiui/view/VolumeDialog$CustomDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x11030025

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/view/VolumeDialog$VolumeRow;->-set15(Lmiui/view/VolumeDialog$VolumeRow;Landroid/view/View;)Landroid/view/View;

    invoke-static {v0}, Lmiui/view/VolumeDialog$VolumeRow;->-get14(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-static {v0}, Lmiui/view/VolumeDialog$VolumeRow;->-get14(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v1

    const v2, 0x110c006b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiui/widget/SeekBar;

    invoke-static {v0, v1}, Lmiui/view/VolumeDialog$VolumeRow;->-set9(Lmiui/view/VolumeDialog$VolumeRow;Lmiui/widget/SeekBar;)Lmiui/widget/SeekBar;

    invoke-static {v0}, Lmiui/view/VolumeDialog$VolumeRow;->-get8(Lmiui/view/VolumeDialog$VolumeRow;)Lmiui/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmiui/widget/SeekBar;->setTag(Ljava/lang/Object;)V

    invoke-static {v0}, Lmiui/view/VolumeDialog$VolumeRow;->-get8(Lmiui/view/VolumeDialog$VolumeRow;)Lmiui/widget/SeekBar;

    move-result-object v1

    new-instance v2, Lmiui/view/VolumeDialog$VolumeSeekBarChangeListener;

    invoke-direct {v2, p0, v3}, Lmiui/view/VolumeDialog$VolumeSeekBarChangeListener;-><init>(Lmiui/view/VolumeDialog;Lmiui/view/VolumeDialog$VolumeSeekBarChangeListener;)V

    invoke-virtual {v1, v2}, Lmiui/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-static {v0}, Lmiui/view/VolumeDialog$VolumeRow;->-get14(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lmiui/view/VolumeDialog$4;

    invoke-direct {v2, p0, v0}, Lmiui/view/VolumeDialog$4;-><init>(Lmiui/view/VolumeDialog;Lmiui/view/VolumeDialog$VolumeRow;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-static {v0}, Lmiui/view/VolumeDialog$VolumeRow;->-get14(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v1

    const v2, 0x110c006a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    invoke-static {v0, v1}, Lmiui/view/VolumeDialog$VolumeRow;->-set4(Lmiui/view/VolumeDialog$VolumeRow;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;

    invoke-static {v0}, Lmiui/view/VolumeDialog$VolumeRow;->-get4(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v2

    sget-object v1, Lmiui/view/VolumeDialog;->sVolumeIconTypeMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/view/VolumeDialog$VolumeIconRes;

    iget v1, v1, Lmiui/view/VolumeDialog$VolumeIconRes;->normalIconRes:I

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    return-object v0
.end method

.method private isAttached()Z
    .registers 2

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private orderVolumeRowsH()V
    .registers 13

    const/16 v9, 0x8

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x0

    :goto_6
    iget-object v6, p0, Lmiui/view/VolumeDialog;->mVolumeRowViews:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_c7

    iget-object v6, p0, Lmiui/view/VolumeDialog;->mVolumeRowViews:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_2b

    iget v6, p0, Lmiui/view/VolumeDialog;->mActiveStream:I

    invoke-direct {p0, v6}, Lmiui/view/VolumeDialog;->findRow(I)Lmiui/view/VolumeDialog$VolumeRow;

    move-result-object v1

    if-nez v1, :cond_2b

    const-string/jumbo v6, "VolumeDialog"

    const-string/jumbo v7, "terrible thing happens in orderVolumeRowsH"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    if-nez v1, :cond_50

    iget-object v6, p0, Lmiui/view/VolumeDialog;->mRows:Ljava/util/List;

    add-int/lit8 v5, v4, 0x1

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/view/VolumeDialog$VolumeRow;

    invoke-static {v1}, Lmiui/view/VolumeDialog$VolumeRow;->-get11(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v6

    iget v7, p0, Lmiui/view/VolumeDialog;->mActiveStream:I

    if-ne v6, v7, :cond_c8

    iget-object v6, p0, Lmiui/view/VolumeDialog;->mRows:Ljava/util/List;

    add-int/lit8 v4, v5, 0x1

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/view/VolumeDialog$VolumeRow;

    :goto_49
    invoke-static {v1}, Lmiui/view/VolumeDialog$VolumeRow;->-get6(Lmiui/view/VolumeDialog$VolumeRow;)Z

    move-result v6

    if-nez v6, :cond_50

    const/4 v3, 0x0

    :cond_50
    if-eqz v3, :cond_bd

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    :goto_55
    invoke-static {v1, v2}, Lmiui/view/VolumeDialog$VolumeRow;->-set15(Lmiui/view/VolumeDialog$VolumeRow;Landroid/view/View;)Landroid/view/View;

    invoke-static {v1, v8}, Lmiui/view/VolumeDialog$VolumeRow;->-set2(Lmiui/view/VolumeDialog$VolumeRow;I)I

    const v6, 0x110c006a

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    invoke-static {v1, v6}, Lmiui/view/VolumeDialog$VolumeRow;->-set4(Lmiui/view/VolumeDialog$VolumeRow;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;

    invoke-static {v1}, Lmiui/view/VolumeDialog$VolumeRow;->-get4(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v7

    sget-object v6, Lmiui/view/VolumeDialog;->sVolumeIconTypeMap:Ljava/util/Map;

    invoke-static {v1}, Lmiui/view/VolumeDialog$VolumeRow;->-get7(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/view/VolumeDialog$VolumeIconRes;

    iget v6, v6, Lmiui/view/VolumeDialog$VolumeIconRes;->normalIconRes:I

    invoke-virtual {v7, v6}, Landroid/widget/ImageButton;->setImageResource(I)V

    const v6, 0x110c006b

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lmiui/widget/SeekBar;

    invoke-static {v1, v6}, Lmiui/view/VolumeDialog$VolumeRow;->-set9(Lmiui/view/VolumeDialog$VolumeRow;Lmiui/widget/SeekBar;)Lmiui/widget/SeekBar;

    invoke-static {v1}, Lmiui/view/VolumeDialog$VolumeRow;->-get14(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-static {v1}, Lmiui/view/VolumeDialog$VolumeRow;->-get8(Lmiui/view/VolumeDialog$VolumeRow;)Lmiui/widget/SeekBar;

    move-result-object v6

    invoke-virtual {v6, v1}, Lmiui/widget/SeekBar;->setTag(Ljava/lang/Object;)V

    if-lez v0, :cond_c3

    iget-object v6, p0, Lmiui/view/VolumeDialog;->mVolumeRowSpaces:Ljava/util/List;

    add-int/lit8 v7, v0, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-static {v1, v6}, Lmiui/view/VolumeDialog$VolumeRow;->-set10(Lmiui/view/VolumeDialog$VolumeRow;Landroid/view/View;)Landroid/view/View;

    iget-object v6, p0, Lmiui/view/VolumeDialog;->mVolumeRowSpaces:Ljava/util/List;

    add-int/lit8 v7, v0, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    if-eqz v3, :cond_c1

    move v7, v8

    :goto_b6
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    :goto_b9
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_6

    :cond_bd
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_55

    :cond_c1
    move v7, v9

    goto :goto_b6

    :cond_c3
    invoke-static {v1, v11}, Lmiui/view/VolumeDialog$VolumeRow;->-set10(Lmiui/view/VolumeDialog$VolumeRow;Landroid/view/View;)Landroid/view/View;

    goto :goto_b9

    :cond_c7
    return-void

    :cond_c8
    move v4, v5

    goto :goto_49
.end method

.method private prepareForCollapse()V
    .registers 6

    const/4 v4, 0x7

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    invoke-virtual {v0, v4}, Lmiui/view/VolumeDialog$H;->removeMessages(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/view/VolumeDialog;->mCollapseTime:J

    invoke-direct {p0}, Lmiui/view/VolumeDialog;->updateDialogBottomMarginH()V

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    invoke-direct {p0}, Lmiui/view/VolumeDialog;->getConservativeCollapseDuration()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v4, v2, v3}, Lmiui/view/VolumeDialog$H;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private recheckH(Lmiui/view/VolumeDialog$VolumeRow;)V
    .registers 5

    if-nez p1, :cond_18

    iget-object v2, p0, Lmiui/view/VolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/view/VolumeDialog$VolumeRow;

    invoke-direct {p0, v0}, Lmiui/view/VolumeDialog;->updateVolumeRowH(Lmiui/view/VolumeDialog$VolumeRow;)V

    goto :goto_8

    :cond_18
    invoke-direct {p0, p1}, Lmiui/view/VolumeDialog;->updateVolumeRowH(Lmiui/view/VolumeDialog$VolumeRow;)V

    :cond_1b
    return-void
.end method

.method private rescheduleTimeoutH()V
    .registers 7

    const/4 v3, 0x2

    iget-object v1, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    invoke-virtual {v1, v3}, Lmiui/view/VolumeDialog$H;->removeMessages(I)V

    invoke-direct {p0}, Lmiui/view/VolumeDialog;->computeTimeoutH()I

    move-result v0

    iget-object v1, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    iget-object v2, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    invoke-virtual {v2, v3}, Lmiui/view/VolumeDialog$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Lmiui/view/VolumeDialog$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private showH(I)V
    .registers 13

    const/4 v10, -0x1

    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v3, p0, Lmiui/view/VolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_d9

    new-instance v3, Lmiui/view/VolumeDialog$CustomDialog;

    iget-object v4, p0, Lmiui/view/VolumeDialog;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4}, Lmiui/view/VolumeDialog$CustomDialog;-><init>(Lmiui/view/VolumeDialog;Landroid/content/Context;)V

    iput-object v3, p0, Lmiui/view/VolumeDialog;->mDialog:Lmiui/view/VolumeDialog$CustomDialog;

    iget-object v3, p0, Lmiui/view/VolumeDialog;->mDialog:Lmiui/view/VolumeDialog$CustomDialog;

    invoke-virtual {v3}, Lmiui/view/VolumeDialog$CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/Window;->requestFeature(I)Z

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v8}, Landroid/view/Window;->clearFlags(I)V

    const v3, 0x1040128

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    iget-object v3, p0, Lmiui/view/VolumeDialog;->mDialog:Lmiui/view/VolumeDialog$CustomDialog;

    invoke-virtual {v3, v7}, Lmiui/view/VolumeDialog$CustomDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v3, p0, Lmiui/view/VolumeDialog;->mDialog:Lmiui/view/VolumeDialog$CustomDialog;

    const v4, 0x11030024

    invoke-virtual {v3, v4}, Lmiui/view/VolumeDialog$CustomDialog;->setContentView(I)V

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v3, -0x2

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v10, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v3, 0x7e4

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, -0x3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    const-string/jumbo v3, "Volume Control"

    invoke-virtual {v1, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/16 v3, 0x30

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v3, 0x110d0003

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/16 v3, 0x30

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object v3, p0, Lmiui/view/VolumeDialog;->mDialog:Lmiui/view/VolumeDialog$CustomDialog;

    const v4, 0x110c0066

    invoke-virtual {v3, v4}, Lmiui/view/VolumeDialog$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lmiui/view/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lmiui/view/VolumeDialog;->mDialog:Lmiui/view/VolumeDialog$CustomDialog;

    const v4, 0x110c0068

    invoke-virtual {v3, v4}, Lmiui/view/VolumeDialog$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lmiui/view/VolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lmiui/view/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    const v4, 0x110c0067

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lmiui/view/VolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lmiui/view/VolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    iget-object v4, p0, Lmiui/view/VolumeDialog;->mClickExpand:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lmiui/view/VolumeDialog;->mDialog:Lmiui/view/VolumeDialog$CustomDialog;

    const v4, 0x110c0038

    invoke-virtual {v3, v4}, Lmiui/view/VolumeDialog$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lmiui/view/RingerModeLayout;

    iput-object v3, p0, Lmiui/view/VolumeDialog;->mRingerModeLayout:Lmiui/view/RingerModeLayout;

    filled-new-array {v6, v6}, [I

    move-result-object v3

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lmiui/view/VolumeDialog;->mExpandAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/animation/LayoutTransition;

    invoke-direct {v3}, Landroid/animation/LayoutTransition;-><init>()V

    iput-object v3, p0, Lmiui/view/VolumeDialog;->mLayoutTransition:Landroid/animation/LayoutTransition;

    iget-object v3, p0, Lmiui/view/VolumeDialog;->mLayoutTransition:Landroid/animation/LayoutTransition;

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/animation/LayoutTransition;->setDuration(J)V

    const/4 v3, 0x5

    invoke-direct {p0, v8, v3, v7}, Lmiui/view/VolumeDialog;->addRow(IIZ)V

    const/4 v3, 0x3

    const/4 v4, 0x3

    invoke-direct {p0, v3, v4, v7}, Lmiui/view/VolumeDialog;->addRow(IIZ)V

    invoke-direct {p0, v9, v6, v7}, Lmiui/view/VolumeDialog;->addRow(IIZ)V

    invoke-direct {p0, v6, v9, v6}, Lmiui/view/VolumeDialog;->addRow(IIZ)V

    const/4 v3, 0x6

    invoke-direct {p0, v3, v9, v6}, Lmiui/view/VolumeDialog;->addRow(IIZ)V

    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v3

    const/16 v4, 0xa

    if-le v3, v4, :cond_d9

    const/16 v3, 0xa

    const/16 v4, 0x8

    invoke-direct {p0, v3, v4, v6}, Lmiui/view/VolumeDialog;->addRow(IIZ)V

    :cond_d9
    iget-object v3, p0, Lmiui/view/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    iget-object v3, p0, Lmiui/view/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    const v4, 0x110200fc

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    iget-object v3, p0, Lmiui/view/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v3, p0, Lmiui/view/VolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x110b0041

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-nez v3, :cond_101

    iput v10, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_101
    iget-object v3, p0, Lmiui/view/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v6, p0, Lmiui/view/VolumeDialog;->mLastStatus:Z

    iget-boolean v3, p0, Lmiui/view/VolumeDialog;->mShowing:Z

    if-nez v3, :cond_13b

    iget-object v3, p0, Lmiui/view/VolumeDialog;->mAm:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->getMode()I

    move-result v3

    if-eq v3, v8, :cond_11a

    sget-boolean v3, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_121

    :cond_11a
    iget-object v3, p0, Lmiui/view/VolumeDialog;->mRingerModeLayout:Lmiui/view/RingerModeLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lmiui/view/RingerModeLayout;->setVisibility(I)V

    :cond_121
    iget-object v3, p0, Lmiui/view/VolumeDialog;->mRingerModeLayout:Lmiui/view/RingerModeLayout;

    invoke-virtual {v3, p0}, Lmiui/view/RingerModeLayout;->setVolumeDialog(Lmiui/view/VolumeDialog;)V

    iget-object v3, p0, Lmiui/view/VolumeDialog;->mRingerModeLayout:Lmiui/view/RingerModeLayout;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmiui/view/RingerModeLayout;->setLooper(Landroid/os/Looper;)V

    iget-object v3, p0, Lmiui/view/VolumeDialog;->mRingerModeLayout:Lmiui/view/RingerModeLayout;

    iget-object v4, p0, Lmiui/view/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Lmiui/view/RingerModeLayout;->setParentDialog(Landroid/view/ViewGroup;)V

    iget-object v3, p0, Lmiui/view/VolumeDialog;->mRingerModeLayout:Lmiui/view/RingerModeLayout;

    invoke-virtual {v3}, Lmiui/view/RingerModeLayout;->init()V

    :cond_13b
    invoke-direct {p0}, Lmiui/view/VolumeDialog;->adjustDialogPosition()V

    const-string/jumbo v3, "VolumeDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "showH "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lmiui/view/VolumeDialog;->mActiveStream:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lmiui/view/VolumeDialog;->mShowing:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lmiui/view/VolumeDialog;->getMappedStream(I)I

    move-result p1

    iget-object v3, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    invoke-virtual {v3, v7}, Lmiui/view/VolumeDialog$H;->removeMessages(I)V

    iget-object v3, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    invoke-virtual {v3, v8}, Lmiui/view/VolumeDialog$H;->removeMessages(I)V

    iget-boolean v3, p0, Lmiui/view/VolumeDialog;->mShowing:Z

    if-eqz v3, :cond_188

    iget v3, p0, Lmiui/view/VolumeDialog;->mActiveStream:I

    if-eq v3, p1, :cond_18d

    :cond_188
    iput p1, p0, Lmiui/view/VolumeDialog;->mActiveStream:I

    invoke-direct {p0}, Lmiui/view/VolumeDialog;->orderVolumeRowsH()V

    :cond_18d
    invoke-direct {p0}, Lmiui/view/VolumeDialog;->rescheduleTimeoutH()V

    invoke-direct {p0}, Lmiui/view/VolumeDialog;->updateVolumeRowsH()V

    iget-boolean v3, p0, Lmiui/view/VolumeDialog;->mInScreenshot:Z

    if-nez v3, :cond_19b

    iget-boolean v3, p0, Lmiui/view/VolumeDialog;->mShowing:Z

    if-eqz v3, :cond_1a6

    :cond_19b
    iget-boolean v3, p0, Lmiui/view/VolumeDialog;->mShowing:Z

    if-eqz v3, :cond_1a5

    invoke-direct {p0}, Lmiui/view/VolumeDialog;->updateExpandButtonH()V

    invoke-direct {p0}, Lmiui/view/VolumeDialog;->updateRowsVisibilityByExpandH()V

    :cond_1a5
    return-void

    :cond_1a6
    iput-boolean v6, p0, Lmiui/view/VolumeDialog;->mExpanded:Z

    iput-boolean v6, p0, Lmiui/view/VolumeDialog;->mExpandAnimating:Z

    invoke-direct {p0}, Lmiui/view/VolumeDialog;->updateExpandButtonH()V

    invoke-direct {p0}, Lmiui/view/VolumeDialog;->updateRowsVisibilityByExpandH()V

    iput-boolean v7, p0, Lmiui/view/VolumeDialog;->mShowing:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lmiui/view/VolumeDialog;->mDialogShowTime:J

    iget-object v3, p0, Lmiui/view/VolumeDialog;->mDialog:Lmiui/view/VolumeDialog$CustomDialog;

    invoke-virtual {v3}, Lmiui/view/VolumeDialog$CustomDialog;->show()V

    iget-object v3, p0, Lmiui/view/VolumeDialog;->mDelegate:Lmiui/view/VolumeDialog$VolumePanelDelegate;

    invoke-interface {v3, v7}, Lmiui/view/VolumeDialog$VolumePanelDelegate;->notifyVolumeControllerVisible(Z)V

    return-void
.end method

.method private showSafetyWarningH(I)V
    .registers 5

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mDelegate:Lmiui/view/VolumeDialog$VolumePanelDelegate;

    invoke-interface {v0, p1}, Lmiui/view/VolumeDialog$VolumePanelDelegate;->showSafeVolumeDialogByFlags(I)Z

    move-result v0

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lmiui/view/VolumeDialog;->mShowing:Z

    if-eqz v0, :cond_2e

    :cond_c
    iget-object v1, p0, Lmiui/view/VolumeDialog;->mSafetyWarningLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_f
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mSafetyWarning:Landroid/app/AlertDialog;
    :try_end_11
    .catchall {:try_start_f .. :try_end_11} :catchall_32

    if-eqz v0, :cond_15

    monitor-exit v1

    return-void

    :cond_15
    :try_start_15
    new-instance v0, Lmiui/view/VolumeDialog$SafetyWarningDialog;

    iget-object v2, p0, Lmiui/view/VolumeDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v2}, Lmiui/view/VolumeDialog$SafetyWarningDialog;-><init>(Lmiui/view/VolumeDialog;Landroid/content/Context;)V

    iput-object v0, p0, Lmiui/view/VolumeDialog;->mSafetyWarning:Landroid/app/AlertDialog;

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mSafetyWarning:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mSafetyWarning:Landroid/app/AlertDialog;

    new-instance v2, Lmiui/view/VolumeDialog$8;

    invoke-direct {v2, p0}, Lmiui/view/VolumeDialog$8;-><init>(Lmiui/view/VolumeDialog;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    :try_end_2d
    .catchall {:try_start_15 .. :try_end_2d} :catchall_32

    monitor-exit v1

    :cond_2e
    invoke-direct {p0}, Lmiui/view/VolumeDialog;->rescheduleTimeoutH()V

    return-void

    :catchall_32
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private stateChangedH(II)V
    .registers 7

    invoke-direct {p0, p1}, Lmiui/view/VolumeDialog;->getMappedStream(I)I

    move-result v1

    invoke-direct {p0, v1}, Lmiui/view/VolumeDialog;->findRow(I)Lmiui/view/VolumeDialog$VolumeRow;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-direct {p0, v0}, Lmiui/view/VolumeDialog;->updateVolumeRowH(Lmiui/view/VolumeDialog$VolumeRow;)V

    :goto_d
    return-void

    :cond_e
    const-string/jumbo v1, "VolumeDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stateChangedH can not find volume row for stream "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method private streamDeviceChanged(I)V
    .registers 5

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    invoke-direct {p0, p1}, Lmiui/view/VolumeDialog;->findRow(I)Lmiui/view/VolumeDialog$VolumeRow;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lmiui/view/VolumeDialog$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private updateDialogBottomMarginH()V
    .registers 11

    iget-object v6, p0, Lmiui/view/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    if-nez v6, :cond_5

    return-void

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lmiui/view/VolumeDialog;->mCollapseTime:J

    sub-long v2, v6, v8

    iget-wide v6, p0, Lmiui/view/VolumeDialog;->mCollapseTime:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_39

    invoke-direct {p0}, Lmiui/view/VolumeDialog;->getConservativeCollapseDuration()I

    move-result v6

    int-to-long v6, v6

    cmp-long v6, v2, v6

    if-gez v6, :cond_39

    const/4 v0, 0x1

    :goto_1f
    iget-object v6, p0, Lmiui/view/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_3b

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    :goto_33
    iput v4, v5, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_39
    const/4 v0, 0x0

    goto :goto_1f

    :cond_3b
    const/4 v4, -0x2

    goto :goto_33
.end method

.method private updateExpandButtonH()V
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lmiui/view/VolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    if-nez v1, :cond_6

    return-void

    :cond_6
    iget-object v1, p0, Lmiui/view/VolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    iget v2, p0, Lmiui/view/VolumeDialog;->mActiveStream:I

    if-nez v2, :cond_d

    const/4 v0, 0x4

    :cond_d
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v1, p0, Lmiui/view/VolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    iget-boolean v0, p0, Lmiui/view/VolumeDialog;->mExpanded:Z

    if-eqz v0, :cond_26

    const v0, 0x110200fb

    :goto_19
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    iget-boolean v1, p0, Lmiui/view/VolumeDialog;->mExpandAnimating:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setClickable(Z)V

    return-void

    :cond_26
    const v0, 0x110200fd

    goto :goto_19
.end method

.method private updateLayoutDirectionH(I)V
    .registers 3

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    :cond_9
    return-void
.end method

.method private updateRowsVisibilityByExpandH()V
    .registers 7

    iget-object v3, p0, Lmiui/view/VolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_81

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/view/VolumeDialog$VolumeRow;

    const/16 v2, 0x8

    invoke-static {v0}, Lmiui/view/VolumeDialog$VolumeRow;->-get11(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v3

    iget v4, p0, Lmiui/view/VolumeDialog;->mActiveStream:I

    if-ne v3, v4, :cond_72

    const/4 v2, 0x0

    :cond_1d
    :goto_1d
    invoke-static {v0}, Lmiui/view/VolumeDialog$VolumeRow;->-get14(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    const-string/jumbo v3, "VolumeDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateRowsVisibilityByExpandH "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lmiui/view/VolumeDialog$VolumeRow;->-get11(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lmiui/view/VolumeDialog$VolumeRow;->-get14(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lmiui/view/VolumeDialog$VolumeRow;->-get9(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-static {v0}, Lmiui/view/VolumeDialog$VolumeRow;->-get9(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    :cond_72
    invoke-static {v0}, Lmiui/view/VolumeDialog$VolumeRow;->-get6(Lmiui/view/VolumeDialog$VolumeRow;)Z

    move-result v3

    if-eqz v3, :cond_1d

    iget-boolean v3, p0, Lmiui/view/VolumeDialog;->mExpanded:Z

    if-eqz v3, :cond_7e

    const/4 v2, 0x0

    goto :goto_1d

    :cond_7e
    const/16 v2, 0x8

    goto :goto_1d

    :cond_81
    return-void
.end method

.method private updateVolumeRowH(Lmiui/view/VolumeDialog$VolumeRow;)V
    .registers 19

    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/view/VolumeDialog;->mContext:Landroid/content/Context;

    invoke-static/range {p1 .. p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get11(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/view/VolumeDialog;->mDelegate:Lmiui/view/VolumeDialog$VolumePanelDelegate;

    move-object/from16 v16, v0

    invoke-static/range {v14 .. v16}, Lmiui/view/VolumeDialog$StreamState;->getStreamStateByStreamType(Landroid/content/Context;ILmiui/view/VolumeDialog$VolumePanelDelegate;)Lmiui/view/VolumeDialog$StreamState;

    move-result-object v12

    if-nez v12, :cond_15

    return-void

    :cond_15
    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lmiui/view/VolumeDialog$VolumeRow;->-set11(Lmiui/view/VolumeDialog$VolumeRow;Lmiui/view/VolumeDialog$StreamState;)Lmiui/view/VolumeDialog$StreamState;

    invoke-static {v12}, Lmiui/view/VolumeDialog$StreamState;->-get0(Lmiui/view/VolumeDialog$StreamState;)I

    move-result v14

    if-lez v14, :cond_29

    invoke-static {v12}, Lmiui/view/VolumeDialog$StreamState;->-get0(Lmiui/view/VolumeDialog$StreamState;)I

    move-result v14

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lmiui/view/VolumeDialog$VolumeRow;->-set8(Lmiui/view/VolumeDialog$VolumeRow;I)I

    :cond_29
    invoke-static/range {p1 .. p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get11(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_13f

    const/4 v8, 0x1

    :goto_31
    if-eqz v8, :cond_145

    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/view/VolumeDialog;->mDelegate:Lmiui/view/VolumeDialog$VolumePanelDelegate;

    invoke-interface {v14}, Lmiui/view/VolumeDialog$VolumePanelDelegate;->getRingerMode()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_142

    const/4 v9, 0x1

    :goto_3f
    if-eqz v8, :cond_14b

    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/view/VolumeDialog;->mDelegate:Lmiui/view/VolumeDialog$VolumePanelDelegate;

    invoke-interface {v14}, Lmiui/view/VolumeDialog$VolumePanelDelegate;->getRingerMode()I

    move-result v14

    if-nez v14, :cond_148

    const/4 v7, 0x1

    :goto_4c
    invoke-static {v12}, Lmiui/view/VolumeDialog$StreamState;->-get1(Lmiui/view/VolumeDialog$StreamState;)I

    move-result v14

    mul-int/lit8 v10, v14, 0x64

    invoke-static/range {p1 .. p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get8(Lmiui/view/VolumeDialog$VolumeRow;)Lmiui/widget/SeekBar;

    move-result-object v14

    invoke-virtual {v14}, Lmiui/widget/SeekBar;->getMax()I

    move-result v14

    if-eq v10, v14, :cond_63

    invoke-static/range {p1 .. p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get8(Lmiui/view/VolumeDialog$VolumeRow;)Lmiui/widget/SeekBar;

    move-result-object v14

    invoke-virtual {v14, v10}, Lmiui/widget/SeekBar;->setMax(I)V

    :cond_63
    invoke-static/range {p1 .. p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get7(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v5

    invoke-static/range {p1 .. p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get11(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lmiui/view/VolumeDialog;->mActiveStream:I

    if-ne v14, v15, :cond_a9

    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/view/VolumeDialog;->mAm:Landroid/media/AudioManager;

    invoke-static/range {p1 .. p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get11(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v3

    invoke-static/range {p1 .. p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get11(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v14

    if-nez v14, :cond_8e

    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/view/VolumeDialog;->mAm:Landroid/media/AudioManager;

    invoke-virtual {v14}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v14

    if-eqz v14, :cond_8e

    const/4 v5, 0x6

    :cond_8e
    and-int/lit8 v14, v3, 0x4

    if-nez v14, :cond_96

    and-int/lit8 v14, v3, 0x8

    if-eqz v14, :cond_97

    :cond_96
    const/4 v5, 0x2

    :cond_97
    invoke-static/range {p1 .. p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get11(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v14

    const/4 v15, 0x3

    if-ne v14, v15, :cond_a9

    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/view/VolumeDialog;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lmiui/util/AudioManagerHelper;->isHiFiMode(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_a9

    const/4 v5, 0x7

    :cond_a9
    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lmiui/view/VolumeDialog$VolumeRow;->-set5(Lmiui/view/VolumeDialog$VolumeRow;I)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/view/VolumeDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v15, "audio"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    invoke-static/range {p1 .. p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get11(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v14

    invoke-virtual {v2, v14}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v14

    if-nez v14, :cond_14e

    const/4 v13, 0x1

    :goto_c6
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x17

    if-ge v14, v15, :cond_e3

    invoke-static/range {p1 .. p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get11(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v14

    const/4 v15, 0x6

    if-eq v14, v15, :cond_d9

    invoke-static/range {p1 .. p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get11(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v14

    if-nez v14, :cond_e3

    :cond_d9
    invoke-static {v12}, Lmiui/view/VolumeDialog$StreamState;->-get4(Lmiui/view/VolumeDialog$StreamState;)Z

    move-result v14

    if-eqz v14, :cond_151

    invoke-static {v12}, Lmiui/view/VolumeDialog$StreamState;->-get3(Lmiui/view/VolumeDialog$StreamState;)Z

    move-result v13

    :cond_e3
    :goto_e3
    sget-object v14, Lmiui/view/VolumeDialog;->sVolumeIconTypeMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/view/VolumeDialog$VolumeIconRes;

    if-eqz v13, :cond_153

    iget v4, v6, Lmiui/view/VolumeDialog$VolumeIconRes;->mutedIconRes:I

    :goto_f3
    invoke-static/range {p1 .. p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get2(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v14

    if-eq v4, v14, :cond_105

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lmiui/view/VolumeDialog$VolumeRow;->-set2(Lmiui/view/VolumeDialog$VolumeRow;I)I

    invoke-static/range {p1 .. p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get4(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v14

    invoke-virtual {v14, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    :cond_105
    if-eqz v13, :cond_156

    sget-object v14, Lmiui/view/VolumeDialog;->sVolumeSeekbarProgress:Lmiui/view/VolumeDialog$VolumeSeekbarProgress;

    iget v11, v14, Lmiui/view/VolumeDialog$VolumeSeekbarProgress;->silentProgress:I

    :goto_10b
    invoke-static/range {p1 .. p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get3(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v14

    if-eq v11, v14, :cond_129

    move-object/from16 v0, p1

    invoke-static {v0, v11}, Lmiui/view/VolumeDialog$VolumeRow;->-set3(Lmiui/view/VolumeDialog$VolumeRow;I)I

    invoke-static/range {p1 .. p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get8(Lmiui/view/VolumeDialog$VolumeRow;)Lmiui/widget/SeekBar;

    move-result-object v14

    invoke-static/range {p1 .. p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get8(Lmiui/view/VolumeDialog$VolumeRow;)Lmiui/widget/SeekBar;

    move-result-object v15

    invoke-virtual {v15}, Lmiui/widget/SeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v14, v15}, Lmiui/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_129
    if-eqz v13, :cond_15b

    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/view/VolumeDialog;->mAm:Landroid/media/AudioManager;

    invoke-static/range {p1 .. p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get11(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v14

    :goto_137
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lmiui/view/VolumeDialog;->updateVolumeRowSliderH(Lmiui/view/VolumeDialog$VolumeRow;I)V

    return-void

    :cond_13f
    const/4 v8, 0x0

    goto/16 :goto_31

    :cond_142
    const/4 v9, 0x0

    goto/16 :goto_3f

    :cond_145
    const/4 v9, 0x0

    goto/16 :goto_3f

    :cond_148
    const/4 v7, 0x0

    goto/16 :goto_4c

    :cond_14b
    const/4 v7, 0x0

    goto/16 :goto_4c

    :cond_14e
    const/4 v13, 0x0

    goto/16 :goto_c6

    :cond_151
    const/4 v13, 0x0

    goto :goto_e3

    :cond_153
    iget v4, v6, Lmiui/view/VolumeDialog$VolumeIconRes;->normalIconRes:I

    goto :goto_f3

    :cond_156
    sget-object v14, Lmiui/view/VolumeDialog;->sVolumeSeekbarProgress:Lmiui/view/VolumeDialog$VolumeSeekbarProgress;

    iget v11, v14, Lmiui/view/VolumeDialog$VolumeSeekbarProgress;->normalProgress:I

    goto :goto_10b

    :cond_15b
    invoke-static/range {p1 .. p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get10(Lmiui/view/VolumeDialog$VolumeRow;)Lmiui/view/VolumeDialog$StreamState;

    move-result-object v14

    invoke-static {v14}, Lmiui/view/VolumeDialog$StreamState;->-get0(Lmiui/view/VolumeDialog$StreamState;)I

    move-result v14

    goto :goto_137
.end method

.method private updateVolumeRowSliderH(Lmiui/view/VolumeDialog$VolumeRow;I)V
    .registers 15

    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get12(Lmiui/view/VolumeDialog$VolumeRow;)Z

    move-result v6

    if-eqz v6, :cond_7

    return-void

    :cond_7
    const-string/jumbo v6, "VolumeDialog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateVolumeRowSliderH start "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get11(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get8(Lmiui/view/VolumeDialog$VolumeRow;)Lmiui/widget/SeekBar;

    move-result-object v6

    invoke-virtual {v6}, Lmiui/widget/SeekBar;->getProgress()I

    move-result v3

    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get8(Lmiui/view/VolumeDialog$VolumeRow;)Lmiui/widget/SeekBar;

    move-result-object v6

    invoke-static {v6, v3}, Lmiui/view/VolumeDialog;->getImpliedLevel(Landroid/widget/SeekBar;I)I

    move-result v1

    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get14(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_7d

    const/4 v4, 0x1

    :goto_4b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get13(Lmiui/view/VolumeDialog$VolumeRow;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    cmp-long v6, v6, v8

    if-gez v6, :cond_7f

    const/4 v0, 0x1

    :goto_5b
    iget-object v6, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    const/4 v7, 0x3

    invoke-virtual {v6, v7, p1}, Lmiui/view/VolumeDialog$H;->removeMessages(ILjava/lang/Object;)V

    iget-boolean v6, p0, Lmiui/view/VolumeDialog;->mShowing:Z

    if-eqz v6, :cond_81

    if-eqz v4, :cond_81

    if-eqz v0, :cond_81

    iget-object v6, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    iget-object v7, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    const/4 v8, 0x3

    invoke-virtual {v7, v8, p1}, Lmiui/view/VolumeDialog$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get13(Lmiui/view/VolumeDialog$VolumeRow;)J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    add-long/2addr v8, v10

    invoke-virtual {v6, v7, v8, v9}, Lmiui/view/VolumeDialog$H;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void

    :cond_7d
    const/4 v4, 0x0

    goto :goto_4b

    :cond_7f
    const/4 v0, 0x0

    goto :goto_5b

    :cond_81
    if-ne p2, v1, :cond_8a

    iget-boolean v6, p0, Lmiui/view/VolumeDialog;->mShowing:Z

    if-eqz v6, :cond_8a

    if-eqz v4, :cond_8a

    return-void

    :cond_8a
    mul-int/lit8 v2, p2, 0x64

    if-eq v3, v2, :cond_13c

    iget-boolean v6, p0, Lmiui/view/VolumeDialog;->mShowing:Z

    if-eqz v6, :cond_13d

    if-eqz v4, :cond_13d

    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get0(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    if-eqz v6, :cond_ab

    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get0(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_ab

    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get1(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v6

    if-ne v6, v2, :cond_ab

    return-void

    :cond_ab
    move v5, v3

    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get0(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    if-eqz v6, :cond_e5

    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get0(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_e5

    const-string/jumbo v6, "VolumeDialog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateVolumeRowSliderH cancel animation: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get11(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get0(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->cancel()V

    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get1(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v5

    :cond_e5
    const-string/jumbo v6, "VolumeDialog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateVolumeRowSliderH animation: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get8(Lmiui/view/VolumeDialog$VolumeRow;)Lmiui/widget/SeekBar;

    move-result-object v6

    const-string/jumbo v7, "progress"

    const/4 v8, 0x2

    new-array v8, v8, [I

    const/4 v9, 0x0

    aput v5, v8, v9

    const/4 v9, 0x1

    aput v2, v8, v9

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-static {p1, v6}, Lmiui/view/VolumeDialog$VolumeRow;->-set0(Lmiui/view/VolumeDialog$VolumeRow;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get0(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-static {p1, v2}, Lmiui/view/VolumeDialog$VolumeRow;->-set1(Lmiui/view/VolumeDialog$VolumeRow;I)I

    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get0(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v8, 0x50

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get0(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->start()V

    :cond_13c
    :goto_13c
    return-void

    :cond_13d
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get0(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    if-eqz v6, :cond_14a

    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get0(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_14a
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get8(Lmiui/view/VolumeDialog$VolumeRow;)Lmiui/widget/SeekBar;

    move-result-object v6

    invoke-virtual {v6, v2}, Lmiui/widget/SeekBar;->setProgress(I)V

    goto :goto_13c
.end method

.method private updateVolumeRowsH()V
    .registers 4

    iget-object v2, p0, Lmiui/view/VolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/view/VolumeDialog$VolumeRow;

    invoke-direct {p0, v0}, Lmiui/view/VolumeDialog;->updateVolumeRowH(Lmiui/view/VolumeDialog$VolumeRow;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private vibrateH()V
    .registers 5

    iget-object v1, p0, Lmiui/view/VolumeDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 3

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lmiui/view/VolumeDialog$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public dismiss(J)V
    .registers 6

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Lmiui/view/VolumeDialog$H;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public isShowing()Z
    .registers 2

    iget-boolean v0, p0, Lmiui/view/VolumeDialog;->mShowing:Z

    return v0
.end method

.method public masterMuteChanged(I)V
    .registers 2

    return-void
.end method

.method public masterVolumeChanged(I)V
    .registers 2

    return-void
.end method

.method public recheckAll()V
    .registers 3

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lmiui/view/VolumeDialog$H;->sendEmptyMessage(I)Z

    return-void
.end method

.method public rescheduleTimeout(Z)V
    .registers 5

    const/4 v2, 0x5

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lmiui/view/VolumeDialog$H;->removeMessages(I)V

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    invoke-virtual {v0, v2}, Lmiui/view/VolumeDialog$H;->removeMessages(I)V

    if-eqz p1, :cond_13

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    invoke-virtual {v0, v2}, Lmiui/view/VolumeDialog$H;->sendEmptyMessage(I)Z

    :cond_13
    return-void
.end method

.method public setExpandedH(Z)V
    .registers 6

    iget-boolean v0, p0, Lmiui/view/VolumeDialog;->mExpanded:Z

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iput-boolean p1, p0, Lmiui/view/VolumeDialog;->mExpanded:Z

    invoke-direct {p0}, Lmiui/view/VolumeDialog;->isAttached()Z

    move-result v0

    iput-boolean v0, p0, Lmiui/view/VolumeDialog;->mExpandAnimating:Z

    iget-boolean v0, p0, Lmiui/view/VolumeDialog;->mExpandAnimating:Z

    if-eqz v0, :cond_17

    invoke-direct {p0}, Lmiui/view/VolumeDialog;->updateExpandButtonH()V

    invoke-direct {p0, p1}, Lmiui/view/VolumeDialog;->expandVolumeBar(Z)V

    :cond_17
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    new-instance v1, Lmiui/view/VolumeDialog$5;

    invoke-direct {v1, p0}, Lmiui/view/VolumeDialog$5;-><init>(Lmiui/view/VolumeDialog;)V

    invoke-direct {p0}, Lmiui/view/VolumeDialog;->getConservativeCollapseDuration()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lmiui/view/VolumeDialog$H;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-direct {p0}, Lmiui/view/VolumeDialog;->rescheduleTimeoutH()V

    return-void
.end method

.method public show(II)V
    .registers 6

    const-string/jumbo v0, "VolumeDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "show "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Lmiui/view/VolumeDialog$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public showSafeWarningDialog(I)V
    .registers 5

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lmiui/view/VolumeDialog$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public stateChanged(I)V
    .registers 3

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mAm:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lmiui/view/VolumeDialog;->stateChanged(II)V

    return-void
.end method

.method public stateChanged(II)V
    .registers 6

    const-string/jumbo v0, "VolumeDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stateChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1, p2}, Lmiui/view/VolumeDialog$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public updateLayoutDirection(I)V
    .registers 5

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lmiui/view/VolumeDialog$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
