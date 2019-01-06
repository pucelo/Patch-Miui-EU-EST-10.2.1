.class public final Landroid/view/WindowInsets;
.super Ljava/lang/Object;
.source "WindowInsets.java"


# static fields
.field public static final CONSUMED:Landroid/view/WindowInsets;

.field private static final EMPTY_RECT:Landroid/graphics/Rect;


# instance fields
.field private mAlwaysConsumeNavBar:Z

.field private mIsRound:Z

.field private mStableInsets:Landroid/graphics/Rect;

.field private mStableInsetsConsumed:Z

.field private mSystemWindowInsets:Landroid/graphics/Rect;

.field private mSystemWindowInsetsConsumed:Z

.field private mTempRect:Landroid/graphics/Rect;

.field private mWindowDecorInsets:Landroid/graphics/Rect;

.field private mWindowDecorInsetsConsumed:Z


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v1, 0x0

    const/4 v4, 0x0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v4, v4, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Landroid/view/WindowInsets;->EMPTY_RECT:Landroid/graphics/Rect;

    new-instance v0, Landroid/view/WindowInsets;

    move-object v2, v1

    move-object v3, v1

    move v5, v4

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowInsets;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    sput-object v0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;)V
    .registers 8

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowInsets;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V
    .registers 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    iput-boolean v2, p0, Landroid/view/WindowInsets;->mWindowDecorInsetsConsumed:Z

    iput-boolean v2, p0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    if-nez p1, :cond_36

    move v0, v1

    :goto_e
    iput-boolean v0, p0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    iget-boolean v0, p0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    if-eqz v0, :cond_16

    sget-object p1, Landroid/view/WindowInsets;->EMPTY_RECT:Landroid/graphics/Rect;

    :cond_16
    iput-object p1, p0, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    if-nez p2, :cond_38

    move v0, v1

    :goto_1b
    iput-boolean v0, p0, Landroid/view/WindowInsets;->mWindowDecorInsetsConsumed:Z

    iget-boolean v0, p0, Landroid/view/WindowInsets;->mWindowDecorInsetsConsumed:Z

    if-eqz v0, :cond_23

    sget-object p2, Landroid/view/WindowInsets;->EMPTY_RECT:Landroid/graphics/Rect;

    :cond_23
    iput-object p2, p0, Landroid/view/WindowInsets;->mWindowDecorInsets:Landroid/graphics/Rect;

    if-nez p3, :cond_3a

    :goto_27
    iput-boolean v1, p0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    iget-boolean v0, p0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    if-eqz v0, :cond_2f

    sget-object p3, Landroid/view/WindowInsets;->EMPTY_RECT:Landroid/graphics/Rect;

    :cond_2f
    iput-object p3, p0, Landroid/view/WindowInsets;->mStableInsets:Landroid/graphics/Rect;

    iput-boolean p4, p0, Landroid/view/WindowInsets;->mIsRound:Z

    iput-boolean p5, p0, Landroid/view/WindowInsets;->mAlwaysConsumeNavBar:Z

    return-void

    :cond_36
    move v0, v2

    goto :goto_e

    :cond_38
    move v0, v2

    goto :goto_1b

    :cond_3a
    move v1, v2

    goto :goto_27
.end method

.method public constructor <init>(Landroid/view/WindowInsets;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    iput-boolean v0, p0, Landroid/view/WindowInsets;->mWindowDecorInsetsConsumed:Z

    iput-boolean v0, p0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    iget-object v0, p1, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    iget-object v0, p1, Landroid/view/WindowInsets;->mWindowDecorInsets:Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/view/WindowInsets;->mWindowDecorInsets:Landroid/graphics/Rect;

    iget-object v0, p1, Landroid/view/WindowInsets;->mStableInsets:Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/view/WindowInsets;->mStableInsets:Landroid/graphics/Rect;

    iget-boolean v0, p1, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    iput-boolean v0, p0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    iget-boolean v0, p1, Landroid/view/WindowInsets;->mWindowDecorInsetsConsumed:Z

    iput-boolean v0, p0, Landroid/view/WindowInsets;->mWindowDecorInsetsConsumed:Z

    iget-boolean v0, p1, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    iput-boolean v0, p0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    iget-boolean v0, p1, Landroid/view/WindowInsets;->mIsRound:Z

    iput-boolean v0, p0, Landroid/view/WindowInsets;->mIsRound:Z

    iget-boolean v0, p1, Landroid/view/WindowInsets;->mAlwaysConsumeNavBar:Z

    iput-boolean v0, p0, Landroid/view/WindowInsets;->mAlwaysConsumeNavBar:Z

    return-void
.end method


# virtual methods
.method public consumeStableInsets()Landroid/view/WindowInsets;
    .registers 3

    new-instance v0, Landroid/view/WindowInsets;

    invoke-direct {v0, p0}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    sget-object v1, Landroid/view/WindowInsets;->EMPTY_RECT:Landroid/graphics/Rect;

    iput-object v1, v0, Landroid/view/WindowInsets;->mStableInsets:Landroid/graphics/Rect;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    return-object v0
.end method

.method public consumeSystemWindowInsets()Landroid/view/WindowInsets;
    .registers 3

    new-instance v0, Landroid/view/WindowInsets;

    invoke-direct {v0, p0}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    sget-object v1, Landroid/view/WindowInsets;->EMPTY_RECT:Landroid/graphics/Rect;

    iput-object v1, v0, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    return-object v0
.end method

.method public consumeSystemWindowInsets(ZZZZ)Landroid/view/WindowInsets;
    .registers 11

    const/4 v1, 0x0

    if-nez p1, :cond_9

    if-nez p2, :cond_9

    if-nez p3, :cond_9

    if-eqz p4, :cond_37

    :cond_9
    new-instance v0, Landroid/view/WindowInsets;

    invoke-direct {v0, p0}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    new-instance v5, Landroid/graphics/Rect;

    if-eqz p1, :cond_21

    move v4, v1

    :goto_13
    if-eqz p2, :cond_27

    move v3, v1

    :goto_16
    if-eqz p3, :cond_2d

    move v2, v1

    :goto_19
    if-eqz p4, :cond_32

    :goto_1b
    invoke-direct {v5, v4, v3, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v5, v0, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    return-object v0

    :cond_21
    iget-object v2, p0, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move v4, v2

    goto :goto_13

    :cond_27
    iget-object v2, p0, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move v3, v2

    goto :goto_16

    :cond_2d
    iget-object v2, p0, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    goto :goto_19

    :cond_32
    iget-object v1, p0, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1b

    :cond_37
    return-object p0
.end method

.method public consumeWindowDecorInsets()Landroid/view/WindowInsets;
    .registers 4

    const/4 v2, 0x0

    new-instance v0, Landroid/view/WindowInsets;

    invoke-direct {v0, p0}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    iget-object v1, v0, Landroid/view/WindowInsets;->mWindowDecorInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/WindowInsets;->mWindowDecorInsetsConsumed:Z

    return-object v0
.end method

.method public consumeWindowDecorInsets(ZZZZ)Landroid/view/WindowInsets;
    .registers 11

    const/4 v1, 0x0

    if-nez p1, :cond_9

    if-nez p2, :cond_9

    if-nez p3, :cond_9

    if-eqz p4, :cond_37

    :cond_9
    new-instance v0, Landroid/view/WindowInsets;

    invoke-direct {v0, p0}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    new-instance v5, Landroid/graphics/Rect;

    if-eqz p1, :cond_21

    move v4, v1

    :goto_13
    if-eqz p2, :cond_27

    move v3, v1

    :goto_16
    if-eqz p3, :cond_2d

    move v2, v1

    :goto_19
    if-eqz p4, :cond_32

    :goto_1b
    invoke-direct {v5, v4, v3, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v5, v0, Landroid/view/WindowInsets;->mWindowDecorInsets:Landroid/graphics/Rect;

    return-object v0

    :cond_21
    iget-object v2, p0, Landroid/view/WindowInsets;->mWindowDecorInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move v4, v2

    goto :goto_13

    :cond_27
    iget-object v2, p0, Landroid/view/WindowInsets;->mWindowDecorInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move v3, v2

    goto :goto_16

    :cond_2d
    iget-object v2, p0, Landroid/view/WindowInsets;->mWindowDecorInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    goto :goto_19

    :cond_32
    iget-object v1, p0, Landroid/view/WindowInsets;->mWindowDecorInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1b

    :cond_37
    return-object p0
.end method

.method public getStableInsetBottom()I
    .registers 2

    iget-object v0, p0, Landroid/view/WindowInsets;->mStableInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getStableInsetLeft()I
    .registers 2

    iget-object v0, p0, Landroid/view/WindowInsets;->mStableInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getStableInsetRight()I
    .registers 2

    iget-object v0, p0, Landroid/view/WindowInsets;->mStableInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getStableInsetTop()I
    .registers 2

    iget-object v0, p0, Landroid/view/WindowInsets;->mStableInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public getSystemWindowInsetBottom()I
    .registers 2

    iget-object v0, p0, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getSystemWindowInsetLeft()I
    .registers 2

    iget-object v0, p0, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getSystemWindowInsetRight()I
    .registers 2

    iget-object v0, p0, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getSystemWindowInsetTop()I
    .registers 2

    iget-object v0, p0, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public getSystemWindowInsets()Landroid/graphics/Rect;
    .registers 3

    iget-object v0, p0, Landroid/view/WindowInsets;->mTempRect:Landroid/graphics/Rect;

    if-nez v0, :cond_b

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/WindowInsets;->mTempRect:Landroid/graphics/Rect;

    :cond_b
    iget-object v0, p0, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/view/WindowInsets;->mTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_16
    iget-object v0, p0, Landroid/view/WindowInsets;->mTempRect:Landroid/graphics/Rect;

    return-object v0

    :cond_19
    iget-object v0, p0, Landroid/view/WindowInsets;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_16
.end method

.method public getWindowDecorInsetBottom()I
    .registers 2

    iget-object v0, p0, Landroid/view/WindowInsets;->mWindowDecorInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getWindowDecorInsetLeft()I
    .registers 2

    iget-object v0, p0, Landroid/view/WindowInsets;->mWindowDecorInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getWindowDecorInsetRight()I
    .registers 2

    iget-object v0, p0, Landroid/view/WindowInsets;->mWindowDecorInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getWindowDecorInsetTop()I
    .registers 2

    iget-object v0, p0, Landroid/view/WindowInsets;->mWindowDecorInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public hasInsets()Z
    .registers 2

    invoke-virtual {p0}, Landroid/view/WindowInsets;->hasSystemWindowInsets()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p0}, Landroid/view/WindowInsets;->hasWindowDecorInsets()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p0}, Landroid/view/WindowInsets;->hasStableInsets()Z

    move-result v0

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x1

    goto :goto_10
.end method

.method public hasStableInsets()Z
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/view/WindowInsets;->mStableInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-nez v2, :cond_e

    iget-object v2, p0, Landroid/view/WindowInsets;->mStableInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-eqz v2, :cond_f

    :cond_e
    :goto_e
    return v0

    :cond_f
    iget-object v2, p0, Landroid/view/WindowInsets;->mStableInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-nez v2, :cond_e

    iget-object v2, p0, Landroid/view/WindowInsets;->mStableInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-nez v2, :cond_e

    move v0, v1

    goto :goto_e
.end method

.method public hasSystemWindowInsets()Z
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-nez v2, :cond_e

    iget-object v2, p0, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-eqz v2, :cond_f

    :cond_e
    :goto_e
    return v0

    :cond_f
    iget-object v2, p0, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-nez v2, :cond_e

    iget-object v2, p0, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-nez v2, :cond_e

    move v0, v1

    goto :goto_e
.end method

.method public hasWindowDecorInsets()Z
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/view/WindowInsets;->mWindowDecorInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-nez v2, :cond_e

    iget-object v2, p0, Landroid/view/WindowInsets;->mWindowDecorInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-eqz v2, :cond_f

    :cond_e
    :goto_e
    return v0

    :cond_f
    iget-object v2, p0, Landroid/view/WindowInsets;->mWindowDecorInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-nez v2, :cond_e

    iget-object v2, p0, Landroid/view/WindowInsets;->mWindowDecorInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-nez v2, :cond_e

    move v0, v1

    goto :goto_e
.end method

.method public isConsumed()Z
    .registers 2

    iget-boolean v0, p0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Landroid/view/WindowInsets;->mWindowDecorInsetsConsumed:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isRound()Z
    .registers 2

    iget-boolean v0, p0, Landroid/view/WindowInsets;->mIsRound:Z

    return v0
.end method

.method public replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;
    .registers 7

    new-instance v0, Landroid/view/WindowInsets;

    invoke-direct {v0, p0}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, v0, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method public replaceSystemWindowInsets(Landroid/graphics/Rect;)Landroid/view/WindowInsets;
    .registers 4

    new-instance v0, Landroid/view/WindowInsets;

    invoke-direct {v0, p0}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, v0, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method public replaceWindowDecorInsets(IIII)Landroid/view/WindowInsets;
    .registers 7

    new-instance v0, Landroid/view/WindowInsets;

    invoke-direct {v0, p0}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, v0, Landroid/view/WindowInsets;->mWindowDecorInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method public shouldAlwaysConsumeNavBar()Z
    .registers 2

    iget-boolean v0, p0, Landroid/view/WindowInsets;->mAlwaysConsumeNavBar:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "WindowInsets{systemWindowInsets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " windowDecorInsets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/WindowInsets;->mWindowDecorInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " stableInsets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/WindowInsets;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/WindowInsets;->isRound()Z

    move-result v0

    if-eqz v0, :cond_3e

    const-string/jumbo v0, " round}"

    :goto_35
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3e
    const-string/jumbo v0, "}"

    goto :goto_35
.end method
