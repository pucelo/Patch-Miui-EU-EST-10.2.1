.class Lmiui/view/VolumeDialog$VolumeRow;
.super Ljava/lang/Object;
.source "VolumeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/view/VolumeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VolumeRow"
.end annotation


# instance fields
.field private anim:Landroid/animation/ObjectAnimator;

.field private animTargetProgress:I

.field private cachedIconRes:I

.field private cachedProgressRes:I

.field private icon:Landroid/widget/ImageButton;

.field private iconsMapKey:I

.field private important:Z

.field private initIconsMapKey:I

.field private lastLevel:I

.field private slider:Lmiui/widget/SeekBar;

.field private space:Landroid/view/View;

.field private ss:Lmiui/view/VolumeDialog$StreamState;

.field private stream:I

.field private tracking:Z

.field private userAttempt:J

.field private view:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;
    .registers 2

    iget-object v0, p0, Lmiui/view/VolumeDialog$VolumeRow;->anim:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic -get1(Lmiui/view/VolumeDialog$VolumeRow;)I
    .registers 2

    iget v0, p0, Lmiui/view/VolumeDialog$VolumeRow;->animTargetProgress:I

    return v0
.end method

.method static synthetic -get10(Lmiui/view/VolumeDialog$VolumeRow;)Lmiui/view/VolumeDialog$StreamState;
    .registers 2

    iget-object v0, p0, Lmiui/view/VolumeDialog$VolumeRow;->ss:Lmiui/view/VolumeDialog$StreamState;

    return-object v0
.end method

.method static synthetic -get11(Lmiui/view/VolumeDialog$VolumeRow;)I
    .registers 2

    iget v0, p0, Lmiui/view/VolumeDialog$VolumeRow;->stream:I

    return v0
.end method

.method static synthetic -get12(Lmiui/view/VolumeDialog$VolumeRow;)Z
    .registers 2

    iget-boolean v0, p0, Lmiui/view/VolumeDialog$VolumeRow;->tracking:Z

    return v0
.end method

.method static synthetic -get13(Lmiui/view/VolumeDialog$VolumeRow;)J
    .registers 3

    iget-wide v0, p0, Lmiui/view/VolumeDialog$VolumeRow;->userAttempt:J

    return-wide v0
.end method

.method static synthetic -get14(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lmiui/view/VolumeDialog$VolumeRow;->view:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get2(Lmiui/view/VolumeDialog$VolumeRow;)I
    .registers 2

    iget v0, p0, Lmiui/view/VolumeDialog$VolumeRow;->cachedIconRes:I

    return v0
.end method

.method static synthetic -get3(Lmiui/view/VolumeDialog$VolumeRow;)I
    .registers 2

    iget v0, p0, Lmiui/view/VolumeDialog$VolumeRow;->cachedProgressRes:I

    return v0
.end method

.method static synthetic -get4(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/widget/ImageButton;
    .registers 2

    iget-object v0, p0, Lmiui/view/VolumeDialog$VolumeRow;->icon:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic -get5(Lmiui/view/VolumeDialog$VolumeRow;)I
    .registers 2

    iget v0, p0, Lmiui/view/VolumeDialog$VolumeRow;->iconsMapKey:I

    return v0
.end method

.method static synthetic -get6(Lmiui/view/VolumeDialog$VolumeRow;)Z
    .registers 2

    iget-boolean v0, p0, Lmiui/view/VolumeDialog$VolumeRow;->important:Z

    return v0
.end method

.method static synthetic -get7(Lmiui/view/VolumeDialog$VolumeRow;)I
    .registers 2

    iget v0, p0, Lmiui/view/VolumeDialog$VolumeRow;->initIconsMapKey:I

    return v0
.end method

.method static synthetic -get8(Lmiui/view/VolumeDialog$VolumeRow;)Lmiui/widget/SeekBar;
    .registers 2

    iget-object v0, p0, Lmiui/view/VolumeDialog$VolumeRow;->slider:Lmiui/widget/SeekBar;

    return-object v0
.end method

.method static synthetic -get9(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lmiui/view/VolumeDialog$VolumeRow;->space:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -set0(Lmiui/view/VolumeDialog$VolumeRow;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .registers 2

    iput-object p1, p0, Lmiui/view/VolumeDialog$VolumeRow;->anim:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic -set1(Lmiui/view/VolumeDialog$VolumeRow;I)I
    .registers 2

    iput p1, p0, Lmiui/view/VolumeDialog$VolumeRow;->animTargetProgress:I

    return p1
.end method

.method static synthetic -set10(Lmiui/view/VolumeDialog$VolumeRow;Landroid/view/View;)Landroid/view/View;
    .registers 2

    iput-object p1, p0, Lmiui/view/VolumeDialog$VolumeRow;->space:Landroid/view/View;

    return-object p1
.end method

.method static synthetic -set11(Lmiui/view/VolumeDialog$VolumeRow;Lmiui/view/VolumeDialog$StreamState;)Lmiui/view/VolumeDialog$StreamState;
    .registers 2

    iput-object p1, p0, Lmiui/view/VolumeDialog$VolumeRow;->ss:Lmiui/view/VolumeDialog$StreamState;

    return-object p1
.end method

.method static synthetic -set12(Lmiui/view/VolumeDialog$VolumeRow;I)I
    .registers 2

    iput p1, p0, Lmiui/view/VolumeDialog$VolumeRow;->stream:I

    return p1
.end method

.method static synthetic -set13(Lmiui/view/VolumeDialog$VolumeRow;Z)Z
    .registers 2

    iput-boolean p1, p0, Lmiui/view/VolumeDialog$VolumeRow;->tracking:Z

    return p1
.end method

.method static synthetic -set14(Lmiui/view/VolumeDialog$VolumeRow;J)J
    .registers 4

    iput-wide p1, p0, Lmiui/view/VolumeDialog$VolumeRow;->userAttempt:J

    return-wide p1
.end method

.method static synthetic -set15(Lmiui/view/VolumeDialog$VolumeRow;Landroid/view/View;)Landroid/view/View;
    .registers 2

    iput-object p1, p0, Lmiui/view/VolumeDialog$VolumeRow;->view:Landroid/view/View;

    return-object p1
.end method

.method static synthetic -set2(Lmiui/view/VolumeDialog$VolumeRow;I)I
    .registers 2

    iput p1, p0, Lmiui/view/VolumeDialog$VolumeRow;->cachedIconRes:I

    return p1
.end method

.method static synthetic -set3(Lmiui/view/VolumeDialog$VolumeRow;I)I
    .registers 2

    iput p1, p0, Lmiui/view/VolumeDialog$VolumeRow;->cachedProgressRes:I

    return p1
.end method

.method static synthetic -set4(Lmiui/view/VolumeDialog$VolumeRow;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;
    .registers 2

    iput-object p1, p0, Lmiui/view/VolumeDialog$VolumeRow;->icon:Landroid/widget/ImageButton;

    return-object p1
.end method

.method static synthetic -set5(Lmiui/view/VolumeDialog$VolumeRow;I)I
    .registers 2

    iput p1, p0, Lmiui/view/VolumeDialog$VolumeRow;->iconsMapKey:I

    return p1
.end method

.method static synthetic -set6(Lmiui/view/VolumeDialog$VolumeRow;Z)Z
    .registers 2

    iput-boolean p1, p0, Lmiui/view/VolumeDialog$VolumeRow;->important:Z

    return p1
.end method

.method static synthetic -set7(Lmiui/view/VolumeDialog$VolumeRow;I)I
    .registers 2

    iput p1, p0, Lmiui/view/VolumeDialog$VolumeRow;->initIconsMapKey:I

    return p1
.end method

.method static synthetic -set8(Lmiui/view/VolumeDialog$VolumeRow;I)I
    .registers 2

    iput p1, p0, Lmiui/view/VolumeDialog$VolumeRow;->lastLevel:I

    return p1
.end method

.method static synthetic -set9(Lmiui/view/VolumeDialog$VolumeRow;Lmiui/widget/SeekBar;)Lmiui/widget/SeekBar;
    .registers 2

    iput-object p1, p0, Lmiui/view/VolumeDialog$VolumeRow;->slider:Lmiui/widget/SeekBar;

    return-object p1
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lmiui/view/VolumeDialog$VolumeRow;->lastLevel:I

    return-void
.end method

.method synthetic constructor <init>(Lmiui/view/VolumeDialog$VolumeRow;)V
    .registers 2

    invoke-direct {p0}, Lmiui/view/VolumeDialog$VolumeRow;-><init>()V

    return-void
.end method
