.class Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;
.super Ljava/lang/Object;
.source "MiuiVolumeDialogImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VolumeColumn"
.end annotation


# instance fields
.field private anim:Landroid/animation/ObjectAnimator;

.field private animTargetProgress:I

.field private cachedIconRes:I

.field private cachedIconTint:Landroid/content/res/ColorStateList;

.field private cachedSliderTint:Landroid/content/res/ColorStateList;

.field private icon:Landroid/widget/ImageView;

.field private iconMuteRes:I

.field private iconRes:I

.field private iconState:I

.field private important:Z

.field private initIconMuteRes:I

.field private initIconRes:I

.field private lastAudibleLevel:I

.field private requestedLevel:I

.field private slider:Landroid/widget/SeekBar;

.field private ss:Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

.field private stream:I

.field private tracking:Z

.field private userAttempt:J

.field private view:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Landroid/animation/ObjectAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->anim:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->animTargetProgress:I

    return v0
.end method

.method static synthetic -get10(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->initIconRes:I

    return v0
.end method

.method static synthetic -get11(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->requestedLevel:I

    return v0
.end method

.method static synthetic -get12(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Landroid/widget/SeekBar;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->slider:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->ss:Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->stream:I

    return v0
.end method

.method static synthetic -get15(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->tracking:Z

    return v0
.end method

.method static synthetic -get16(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->userAttempt:J

    return-wide v0
.end method

.method static synthetic -get17(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->view:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->cachedIconRes:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->cachedIconTint:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->cachedSliderTint:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->icon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->iconMuteRes:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->iconRes:I

    return v0
.end method

.method static synthetic -get8(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->important:Z

    return v0
.end method

.method static synthetic -get9(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->initIconMuteRes:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->anim:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->animTargetProgress:I

    return p1
.end method

.method static synthetic -set10(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->initIconMuteRes:I

    return p1
.end method

.method static synthetic -set11(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->initIconRes:I

    return p1
.end method

.method static synthetic -set12(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->lastAudibleLevel:I

    return p1
.end method

.method static synthetic -set13(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->requestedLevel:I

    return p1
.end method

.method static synthetic -set14(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;Landroid/widget/SeekBar;)Landroid/widget/SeekBar;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->slider:Landroid/widget/SeekBar;

    return-object p1
.end method

.method static synthetic -set15(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->ss:Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    return-object p1
.end method

.method static synthetic -set16(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->stream:I

    return p1
.end method

.method static synthetic -set17(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->tracking:Z

    return p1
.end method

.method static synthetic -set18(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->userAttempt:J

    return-wide p1
.end method

.method static synthetic -set19(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->view:Landroid/view/View;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->cachedIconRes:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->cachedIconTint:Landroid/content/res/ColorStateList;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->cachedSliderTint:Landroid/content/res/ColorStateList;

    return-object p1
.end method

.method static synthetic -set5(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->icon:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic -set6(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->iconMuteRes:I

    return p1
.end method

.method static synthetic -set7(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->iconRes:I

    return p1
.end method

.method static synthetic -set8(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->iconState:I

    return p1
.end method

.method static synthetic -set9(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->important:Z

    return p1
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->requestedLevel:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->lastAudibleLevel:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;-><init>()V

    return-void
.end method
