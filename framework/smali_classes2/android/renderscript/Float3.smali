.class public Landroid/renderscript/Float3;
.super Ljava/lang/Object;
.source "Float3.java"


# instance fields
.field public x:F

.field public y:F

.field public z:F


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FFF)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/renderscript/Float3;->x:F

    iput p2, p0, Landroid/renderscript/Float3;->y:F

    iput p3, p0, Landroid/renderscript/Float3;->z:F

    return-void
.end method

.method public constructor <init>(Landroid/renderscript/Float3;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Landroid/renderscript/Float3;->x:F

    iput v0, p0, Landroid/renderscript/Float3;->x:F

    iget v0, p1, Landroid/renderscript/Float3;->y:F

    iput v0, p0, Landroid/renderscript/Float3;->y:F

    iget v0, p1, Landroid/renderscript/Float3;->z:F

    iput v0, p0, Landroid/renderscript/Float3;->z:F

    return-void
.end method

.method public static add(Landroid/renderscript/Float3;F)Landroid/renderscript/Float3;
    .registers 4

    new-instance v0, Landroid/renderscript/Float3;

    invoke-direct {v0}, Landroid/renderscript/Float3;-><init>()V

    iget v1, p0, Landroid/renderscript/Float3;->x:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float3;->x:F

    iget v1, p0, Landroid/renderscript/Float3;->y:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float3;->y:F

    iget v1, p0, Landroid/renderscript/Float3;->z:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float3;->z:F

    return-object v0
.end method

.method public static add(Landroid/renderscript/Float3;Landroid/renderscript/Float3;)Landroid/renderscript/Float3;
    .registers 5

    new-instance v0, Landroid/renderscript/Float3;

    invoke-direct {v0}, Landroid/renderscript/Float3;-><init>()V

    iget v1, p0, Landroid/renderscript/Float3;->x:F

    iget v2, p1, Landroid/renderscript/Float3;->x:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float3;->x:F

    iget v1, p0, Landroid/renderscript/Float3;->y:F

    iget v2, p1, Landroid/renderscript/Float3;->y:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float3;->y:F

    iget v1, p0, Landroid/renderscript/Float3;->z:F

    iget v2, p1, Landroid/renderscript/Float3;->z:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float3;->z:F

    return-object v0
.end method

.method public static div(Landroid/renderscript/Float3;F)Landroid/renderscript/Float3;
    .registers 4

    new-instance v0, Landroid/renderscript/Float3;

    invoke-direct {v0}, Landroid/renderscript/Float3;-><init>()V

    iget v1, p0, Landroid/renderscript/Float3;->x:F

    div-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float3;->x:F

    iget v1, p0, Landroid/renderscript/Float3;->y:F

    div-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float3;->y:F

    iget v1, p0, Landroid/renderscript/Float3;->z:F

    div-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float3;->z:F

    return-object v0
.end method

.method public static div(Landroid/renderscript/Float3;Landroid/renderscript/Float3;)Landroid/renderscript/Float3;
    .registers 5

    new-instance v0, Landroid/renderscript/Float3;

    invoke-direct {v0}, Landroid/renderscript/Float3;-><init>()V

    iget v1, p0, Landroid/renderscript/Float3;->x:F

    iget v2, p1, Landroid/renderscript/Float3;->x:F

    div-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float3;->x:F

    iget v1, p0, Landroid/renderscript/Float3;->y:F

    iget v2, p1, Landroid/renderscript/Float3;->y:F

    div-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float3;->y:F

    iget v1, p0, Landroid/renderscript/Float3;->z:F

    iget v2, p1, Landroid/renderscript/Float3;->z:F

    div-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float3;->z:F

    return-object v0
.end method

.method public static dotProduct(Landroid/renderscript/Float3;Landroid/renderscript/Float3;)Ljava/lang/Float;
    .registers 6

    new-instance v0, Ljava/lang/Float;

    iget v1, p1, Landroid/renderscript/Float3;->x:F

    iget v2, p0, Landroid/renderscript/Float3;->x:F

    mul-float/2addr v1, v2

    iget v2, p1, Landroid/renderscript/Float3;->y:F

    iget v3, p0, Landroid/renderscript/Float3;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Landroid/renderscript/Float3;->z:F

    iget v3, p0, Landroid/renderscript/Float3;->z:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    return-object v0
.end method

.method public static mul(Landroid/renderscript/Float3;F)Landroid/renderscript/Float3;
    .registers 4

    new-instance v0, Landroid/renderscript/Float3;

    invoke-direct {v0}, Landroid/renderscript/Float3;-><init>()V

    iget v1, p0, Landroid/renderscript/Float3;->x:F

    mul-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float3;->x:F

    iget v1, p0, Landroid/renderscript/Float3;->y:F

    mul-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float3;->y:F

    iget v1, p0, Landroid/renderscript/Float3;->z:F

    mul-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float3;->z:F

    return-object v0
.end method

.method public static mul(Landroid/renderscript/Float3;Landroid/renderscript/Float3;)Landroid/renderscript/Float3;
    .registers 5

    new-instance v0, Landroid/renderscript/Float3;

    invoke-direct {v0}, Landroid/renderscript/Float3;-><init>()V

    iget v1, p0, Landroid/renderscript/Float3;->x:F

    iget v2, p1, Landroid/renderscript/Float3;->x:F

    mul-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float3;->x:F

    iget v1, p0, Landroid/renderscript/Float3;->y:F

    iget v2, p1, Landroid/renderscript/Float3;->y:F

    mul-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float3;->y:F

    iget v1, p0, Landroid/renderscript/Float3;->z:F

    iget v2, p1, Landroid/renderscript/Float3;->z:F

    mul-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float3;->z:F

    return-object v0
.end method

.method public static sub(Landroid/renderscript/Float3;F)Landroid/renderscript/Float3;
    .registers 4

    new-instance v0, Landroid/renderscript/Float3;

    invoke-direct {v0}, Landroid/renderscript/Float3;-><init>()V

    iget v1, p0, Landroid/renderscript/Float3;->x:F

    sub-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float3;->x:F

    iget v1, p0, Landroid/renderscript/Float3;->y:F

    sub-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float3;->y:F

    iget v1, p0, Landroid/renderscript/Float3;->z:F

    sub-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float3;->z:F

    return-object v0
.end method

.method public static sub(Landroid/renderscript/Float3;Landroid/renderscript/Float3;)Landroid/renderscript/Float3;
    .registers 5

    new-instance v0, Landroid/renderscript/Float3;

    invoke-direct {v0}, Landroid/renderscript/Float3;-><init>()V

    iget v1, p0, Landroid/renderscript/Float3;->x:F

    iget v2, p1, Landroid/renderscript/Float3;->x:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float3;->x:F

    iget v1, p0, Landroid/renderscript/Float3;->y:F

    iget v2, p1, Landroid/renderscript/Float3;->y:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float3;->y:F

    iget v1, p0, Landroid/renderscript/Float3;->z:F

    iget v2, p1, Landroid/renderscript/Float3;->z:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float3;->z:F

    return-object v0
.end method


# virtual methods
.method public add(F)V
    .registers 3

    iget v0, p0, Landroid/renderscript/Float3;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float3;->x:F

    iget v0, p0, Landroid/renderscript/Float3;->y:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float3;->y:F

    iget v0, p0, Landroid/renderscript/Float3;->z:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float3;->z:F

    return-void
.end method

.method public add(Landroid/renderscript/Float3;)V
    .registers 4

    iget v0, p0, Landroid/renderscript/Float3;->x:F

    iget v1, p1, Landroid/renderscript/Float3;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float3;->x:F

    iget v0, p0, Landroid/renderscript/Float3;->y:F

    iget v1, p1, Landroid/renderscript/Float3;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float3;->y:F

    iget v0, p0, Landroid/renderscript/Float3;->z:F

    iget v1, p1, Landroid/renderscript/Float3;->z:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float3;->z:F

    return-void
.end method

.method public addAt(IF)V
    .registers 5

    packed-switch p1, :pswitch_data_1e

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_c
    iget v0, p0, Landroid/renderscript/Float3;->x:F

    add-float/2addr v0, p2

    iput v0, p0, Landroid/renderscript/Float3;->x:F

    return-void

    :pswitch_12
    iget v0, p0, Landroid/renderscript/Float3;->y:F

    add-float/2addr v0, p2

    iput v0, p0, Landroid/renderscript/Float3;->y:F

    return-void

    :pswitch_18
    iget v0, p0, Landroid/renderscript/Float3;->z:F

    add-float/2addr v0, p2

    iput v0, p0, Landroid/renderscript/Float3;->z:F

    return-void

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_c
        :pswitch_12
        :pswitch_18
    .end packed-switch
.end method

.method public addMultiple(Landroid/renderscript/Float3;F)V
    .registers 5

    iget v0, p0, Landroid/renderscript/Float3;->x:F

    iget v1, p1, Landroid/renderscript/Float3;->x:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float3;->x:F

    iget v0, p0, Landroid/renderscript/Float3;->y:F

    iget v1, p1, Landroid/renderscript/Float3;->y:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float3;->y:F

    iget v0, p0, Landroid/renderscript/Float3;->z:F

    iget v1, p1, Landroid/renderscript/Float3;->z:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float3;->z:F

    return-void
.end method

.method public copyTo([FI)V
    .registers 5

    iget v0, p0, Landroid/renderscript/Float3;->x:F

    aput v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    iget v1, p0, Landroid/renderscript/Float3;->y:F

    aput v1, p1, v0

    add-int/lit8 v0, p2, 0x2

    iget v1, p0, Landroid/renderscript/Float3;->z:F

    aput v1, p1, v0

    return-void
.end method

.method public div(F)V
    .registers 3

    iget v0, p0, Landroid/renderscript/Float3;->x:F

    div-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float3;->x:F

    iget v0, p0, Landroid/renderscript/Float3;->y:F

    div-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float3;->y:F

    iget v0, p0, Landroid/renderscript/Float3;->z:F

    div-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float3;->z:F

    return-void
.end method

.method public div(Landroid/renderscript/Float3;)V
    .registers 4

    iget v0, p0, Landroid/renderscript/Float3;->x:F

    iget v1, p1, Landroid/renderscript/Float3;->x:F

    div-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float3;->x:F

    iget v0, p0, Landroid/renderscript/Float3;->y:F

    iget v1, p1, Landroid/renderscript/Float3;->y:F

    div-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float3;->y:F

    iget v0, p0, Landroid/renderscript/Float3;->z:F

    iget v1, p1, Landroid/renderscript/Float3;->z:F

    div-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float3;->z:F

    return-void
.end method

.method public dotProduct(Landroid/renderscript/Float3;)Ljava/lang/Float;
    .registers 6

    new-instance v0, Ljava/lang/Float;

    iget v1, p0, Landroid/renderscript/Float3;->x:F

    iget v2, p1, Landroid/renderscript/Float3;->x:F

    mul-float/2addr v1, v2

    iget v2, p0, Landroid/renderscript/Float3;->y:F

    iget v3, p1, Landroid/renderscript/Float3;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Landroid/renderscript/Float3;->z:F

    iget v3, p1, Landroid/renderscript/Float3;->z:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    return-object v0
.end method

.method public elementSum()Ljava/lang/Float;
    .registers 4

    new-instance v0, Ljava/lang/Float;

    iget v1, p0, Landroid/renderscript/Float3;->x:F

    iget v2, p0, Landroid/renderscript/Float3;->y:F

    add-float/2addr v1, v2

    iget v2, p0, Landroid/renderscript/Float3;->z:F

    add-float/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    return-object v0
.end method

.method public get(I)F
    .registers 4

    packed-switch p1, :pswitch_data_16

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_c
    iget v0, p0, Landroid/renderscript/Float3;->x:F

    return v0

    :pswitch_f
    iget v0, p0, Landroid/renderscript/Float3;->y:F

    return v0

    :pswitch_12
    iget v0, p0, Landroid/renderscript/Float3;->z:F

    return v0

    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_c
        :pswitch_f
        :pswitch_12
    .end packed-switch
.end method

.method public length()I
    .registers 2

    const/4 v0, 0x3

    return v0
.end method

.method public mul(F)V
    .registers 3

    iget v0, p0, Landroid/renderscript/Float3;->x:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float3;->x:F

    iget v0, p0, Landroid/renderscript/Float3;->y:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float3;->y:F

    iget v0, p0, Landroid/renderscript/Float3;->z:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float3;->z:F

    return-void
.end method

.method public mul(Landroid/renderscript/Float3;)V
    .registers 4

    iget v0, p0, Landroid/renderscript/Float3;->x:F

    iget v1, p1, Landroid/renderscript/Float3;->x:F

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float3;->x:F

    iget v0, p0, Landroid/renderscript/Float3;->y:F

    iget v1, p1, Landroid/renderscript/Float3;->y:F

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float3;->y:F

    iget v0, p0, Landroid/renderscript/Float3;->z:F

    iget v1, p1, Landroid/renderscript/Float3;->z:F

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float3;->z:F

    return-void
.end method

.method public negate()V
    .registers 2

    iget v0, p0, Landroid/renderscript/Float3;->x:F

    neg-float v0, v0

    iput v0, p0, Landroid/renderscript/Float3;->x:F

    iget v0, p0, Landroid/renderscript/Float3;->y:F

    neg-float v0, v0

    iput v0, p0, Landroid/renderscript/Float3;->y:F

    iget v0, p0, Landroid/renderscript/Float3;->z:F

    neg-float v0, v0

    iput v0, p0, Landroid/renderscript/Float3;->z:F

    return-void
.end method

.method public set(Landroid/renderscript/Float3;)V
    .registers 3

    iget v0, p1, Landroid/renderscript/Float3;->x:F

    iput v0, p0, Landroid/renderscript/Float3;->x:F

    iget v0, p1, Landroid/renderscript/Float3;->y:F

    iput v0, p0, Landroid/renderscript/Float3;->y:F

    iget v0, p1, Landroid/renderscript/Float3;->z:F

    iput v0, p0, Landroid/renderscript/Float3;->z:F

    return-void
.end method

.method public setAt(IF)V
    .registers 5

    packed-switch p1, :pswitch_data_16

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_c
    iput p2, p0, Landroid/renderscript/Float3;->x:F

    return-void

    :pswitch_f
    iput p2, p0, Landroid/renderscript/Float3;->y:F

    return-void

    :pswitch_12
    iput p2, p0, Landroid/renderscript/Float3;->z:F

    return-void

    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_c
        :pswitch_f
        :pswitch_12
    .end packed-switch
.end method

.method public setValues(FFF)V
    .registers 4

    iput p1, p0, Landroid/renderscript/Float3;->x:F

    iput p2, p0, Landroid/renderscript/Float3;->y:F

    iput p3, p0, Landroid/renderscript/Float3;->z:F

    return-void
.end method

.method public sub(F)V
    .registers 3

    iget v0, p0, Landroid/renderscript/Float3;->x:F

    sub-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float3;->x:F

    iget v0, p0, Landroid/renderscript/Float3;->y:F

    sub-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float3;->y:F

    iget v0, p0, Landroid/renderscript/Float3;->z:F

    sub-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float3;->z:F

    return-void
.end method

.method public sub(Landroid/renderscript/Float3;)V
    .registers 4

    iget v0, p0, Landroid/renderscript/Float3;->x:F

    iget v1, p1, Landroid/renderscript/Float3;->x:F

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float3;->x:F

    iget v0, p0, Landroid/renderscript/Float3;->y:F

    iget v1, p1, Landroid/renderscript/Float3;->y:F

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float3;->y:F

    iget v0, p0, Landroid/renderscript/Float3;->z:F

    iget v1, p1, Landroid/renderscript/Float3;->z:F

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float3;->z:F

    return-void
.end method
