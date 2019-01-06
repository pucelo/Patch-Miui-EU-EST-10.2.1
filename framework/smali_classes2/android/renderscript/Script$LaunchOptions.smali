.class public final Landroid/renderscript/Script$LaunchOptions;
.super Ljava/lang/Object;
.source "Script.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Script;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LaunchOptions"
.end annotation


# instance fields
.field private strategy:I

.field private xend:I

.field private xstart:I

.field private yend:I

.field private ystart:I

.field private zend:I

.field private zstart:I


# direct methods
.method static synthetic -get0(Landroid/renderscript/Script$LaunchOptions;)I
    .registers 2

    iget v0, p0, Landroid/renderscript/Script$LaunchOptions;->xend:I

    return v0
.end method

.method static synthetic -get1(Landroid/renderscript/Script$LaunchOptions;)I
    .registers 2

    iget v0, p0, Landroid/renderscript/Script$LaunchOptions;->xstart:I

    return v0
.end method

.method static synthetic -get2(Landroid/renderscript/Script$LaunchOptions;)I
    .registers 2

    iget v0, p0, Landroid/renderscript/Script$LaunchOptions;->yend:I

    return v0
.end method

.method static synthetic -get3(Landroid/renderscript/Script$LaunchOptions;)I
    .registers 2

    iget v0, p0, Landroid/renderscript/Script$LaunchOptions;->ystart:I

    return v0
.end method

.method static synthetic -get4(Landroid/renderscript/Script$LaunchOptions;)I
    .registers 2

    iget v0, p0, Landroid/renderscript/Script$LaunchOptions;->zend:I

    return v0
.end method

.method static synthetic -get5(Landroid/renderscript/Script$LaunchOptions;)I
    .registers 2

    iget v0, p0, Landroid/renderscript/Script$LaunchOptions;->zstart:I

    return v0
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/renderscript/Script$LaunchOptions;->xstart:I

    iput v0, p0, Landroid/renderscript/Script$LaunchOptions;->ystart:I

    iput v0, p0, Landroid/renderscript/Script$LaunchOptions;->xend:I

    iput v0, p0, Landroid/renderscript/Script$LaunchOptions;->yend:I

    iput v0, p0, Landroid/renderscript/Script$LaunchOptions;->zstart:I

    iput v0, p0, Landroid/renderscript/Script$LaunchOptions;->zend:I

    return-void
.end method


# virtual methods
.method public getXEnd()I
    .registers 2

    iget v0, p0, Landroid/renderscript/Script$LaunchOptions;->xend:I

    return v0
.end method

.method public getXStart()I
    .registers 2

    iget v0, p0, Landroid/renderscript/Script$LaunchOptions;->xstart:I

    return v0
.end method

.method public getYEnd()I
    .registers 2

    iget v0, p0, Landroid/renderscript/Script$LaunchOptions;->yend:I

    return v0
.end method

.method public getYStart()I
    .registers 2

    iget v0, p0, Landroid/renderscript/Script$LaunchOptions;->ystart:I

    return v0
.end method

.method public getZEnd()I
    .registers 2

    iget v0, p0, Landroid/renderscript/Script$LaunchOptions;->zend:I

    return v0
.end method

.method public getZStart()I
    .registers 2

    iget v0, p0, Landroid/renderscript/Script$LaunchOptions;->zstart:I

    return v0
.end method

.method public setX(II)Landroid/renderscript/Script$LaunchOptions;
    .registers 5

    if-ltz p1, :cond_4

    if-gt p2, p1, :cond_d

    :cond_4
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v1, "Invalid dimensions"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iput p1, p0, Landroid/renderscript/Script$LaunchOptions;->xstart:I

    iput p2, p0, Landroid/renderscript/Script$LaunchOptions;->xend:I

    return-object p0
.end method

.method public setY(II)Landroid/renderscript/Script$LaunchOptions;
    .registers 5

    if-ltz p1, :cond_4

    if-gt p2, p1, :cond_d

    :cond_4
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v1, "Invalid dimensions"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iput p1, p0, Landroid/renderscript/Script$LaunchOptions;->ystart:I

    iput p2, p0, Landroid/renderscript/Script$LaunchOptions;->yend:I

    return-object p0
.end method

.method public setZ(II)Landroid/renderscript/Script$LaunchOptions;
    .registers 5

    if-ltz p1, :cond_4

    if-gt p2, p1, :cond_d

    :cond_4
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v1, "Invalid dimensions"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iput p1, p0, Landroid/renderscript/Script$LaunchOptions;->zstart:I

    iput p2, p0, Landroid/renderscript/Script$LaunchOptions;->zend:I

    return-object p0
.end method
