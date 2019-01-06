.class public Lcom/android/keyguard/AODUpdatePositionController;
.super Ljava/lang/Object;
.source "AODUpdatePositionController.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAodMoveCurrent:I

.field private mAodMovePeriod:I

.field private mIsDisplayUpdateModeOn:Z

.field private mTranslationX:I

.field private mTranslationY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/keyguard/AODUpdatePositionController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/AODUpdatePositionController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "aod_display_update_mode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/keyguard/AODUpdatePositionController;->mIsDisplayUpdateModeOn:Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "aod_move_period"

    const/16 v2, 0x2a

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/AODUpdatePositionController;->mAodMovePeriod:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070086

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/AODUpdatePositionController;->mTranslationX:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070087

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/AODUpdatePositionController;->mTranslationY:I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "aod_move_current"

    const/16 v2, 0x14

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/AODUpdatePositionController;->mAodMoveCurrent:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public updatePosition(Landroid/view/View;)V
    .locals 5

    iget-boolean v3, p0, Lcom/android/keyguard/AODUpdatePositionController;->mIsDisplayUpdateModeOn:Z

    if-nez v3, :cond_0

    sget-object v3, Lcom/android/keyguard/AODUpdatePositionController;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "updatePosition() blocking on setting value"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget v3, p0, Lcom/android/keyguard/AODUpdatePositionController;->mAodMoveCurrent:I

    iget v4, p0, Lcom/android/keyguard/AODUpdatePositionController;->mAodMovePeriod:I

    rem-int/2addr v3, v4

    iput v3, p0, Lcom/android/keyguard/AODUpdatePositionController;->mAodMoveCurrent:I

    iget v3, p0, Lcom/android/keyguard/AODUpdatePositionController;->mAodMoveCurrent:I

    div-int/lit8 v0, v3, 0x2

    rem-int/lit8 v1, v0, 0x3

    div-int/lit8 v2, v0, 0x3

    invoke-static {}, Lcom/android/keyguard/MiuiKeyguardUtils;->isGxzwSensor()Z

    move-result v3

    if-eqz v3, :cond_1

    div-int/lit8 v2, v0, 0x4

    const/4 v3, 0x5

    if-lt v2, v3, :cond_1

    const/4 v2, 0x4

    :cond_1
    iget v3, p0, Lcom/android/keyguard/AODUpdatePositionController;->mTranslationX:I

    add-int/lit8 v4, v1, -0x1

    mul-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationX(F)V

    iget v3, p0, Lcom/android/keyguard/AODUpdatePositionController;->mTranslationY:I

    add-int/lit8 v4, v2, -0x3

    mul-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationY(F)V

    iget v3, p0, Lcom/android/keyguard/AODUpdatePositionController;->mAodMoveCurrent:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/keyguard/AODUpdatePositionController;->mAodMoveCurrent:I

    goto :goto_0
.end method
