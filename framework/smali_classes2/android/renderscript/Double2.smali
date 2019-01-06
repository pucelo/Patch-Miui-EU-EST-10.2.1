.class public Landroid/renderscript/Double2;
.super Ljava/lang/Object;
.source "Double2.java"


# instance fields
.field public x:D

.field public y:D


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(DD)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/renderscript/Double2;->x:D

    iput-wide p3, p0, Landroid/renderscript/Double2;->y:D

    return-void
.end method

.method public constructor <init>(Landroid/renderscript/Double2;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v0, p1, Landroid/renderscript/Double2;->x:D

    iput-wide v0, p0, Landroid/renderscript/Double2;->x:D

    iget-wide v0, p1, Landroid/renderscript/Double2;->y:D

    iput-wide v0, p0, Landroid/renderscript/Double2;->y:D

    return-void
.end method

.method public static add(Landroid/renderscript/Double2;D)Landroid/renderscript/Double2;
    .registers 8

    new-instance v0, Landroid/renderscript/Double2;

    invoke-direct {v0}, Landroid/renderscript/Double2;-><init>()V

    iget-wide v2, p0, Landroid/renderscript/Double2;->x:D

    add-double/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Double2;->x:D

    iget-wide v2, p0, Landroid/renderscript/Double2;->y:D

    add-double/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Double2;->y:D

    return-object v0
.end method

.method public static add(Landroid/renderscript/Double2;Landroid/renderscript/Double2;)Landroid/renderscript/Double2;
    .registers 8

    new-instance v0, Landroid/renderscript/Double2;

    invoke-direct {v0}, Landroid/renderscript/Double2;-><init>()V

    iget-wide v2, p0, Landroid/renderscript/Double2;->x:D

    iget-wide v4, p1, Landroid/renderscript/Double2;->x:D

    add-double/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Double2;->x:D

    iget-wide v2, p0, Landroid/renderscript/Double2;->y:D

    iget-wide v4, p1, Landroid/renderscript/Double2;->y:D

    add-double/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Double2;->y:D

    return-object v0
.end method

.method public static div(Landroid/renderscript/Double2;D)Landroid/renderscript/Double2;
    .registers 8

    new-instance v0, Landroid/renderscript/Double2;

    invoke-direct {v0}, Landroid/renderscript/Double2;-><init>()V

    iget-wide v2, p0, Landroid/renderscript/Double2;->x:D

    div-double/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Double2;->x:D

    iget-wide v2, p0, Landroid/renderscript/Double2;->y:D

    div-double/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Double2;->y:D

    return-object v0
.end method

.method public static div(Landroid/renderscript/Double2;Landroid/renderscript/Double2;)Landroid/renderscript/Double2;
    .registers 8

    new-instance v0, Landroid/renderscript/Double2;

    invoke-direct {v0}, Landroid/renderscript/Double2;-><init>()V

    iget-wide v2, p0, Landroid/renderscript/Double2;->x:D

    iget-wide v4, p1, Landroid/renderscript/Double2;->x:D

    div-double/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Double2;->x:D

    iget-wide v2, p0, Landroid/renderscript/Double2;->y:D

    iget-wide v4, p1, Landroid/renderscript/Double2;->y:D

    div-double/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Double2;->y:D

    return-object v0
.end method

.method public static dotProduct(Landroid/renderscript/Double2;Landroid/renderscript/Double2;)Ljava/lang/Double;
    .registers 8

    iget-wide v0, p1, Landroid/renderscript/Double2;->x:D

    iget-wide v2, p0, Landroid/renderscript/Double2;->x:D

    mul-double/2addr v0, v2

    iget-wide v2, p1, Landroid/renderscript/Double2;->y:D

    iget-wide v4, p0, Landroid/renderscript/Double2;->y:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public static mul(Landroid/renderscript/Double2;D)Landroid/renderscript/Double2;
    .registers 8

    new-instance v0, Landroid/renderscript/Double2;

    invoke-direct {v0}, Landroid/renderscript/Double2;-><init>()V

    iget-wide v2, p0, Landroid/renderscript/Double2;->x:D

    mul-double/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Double2;->x:D

    iget-wide v2, p0, Landroid/renderscript/Double2;->y:D

    mul-double/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Double2;->y:D

    return-object v0
.end method

.method public static mul(Landroid/renderscript/Double2;Landroid/renderscript/Double2;)Landroid/renderscript/Double2;
    .registers 8

    new-instance v0, Landroid/renderscript/Double2;

    invoke-direct {v0}, Landroid/renderscript/Double2;-><init>()V

    iget-wide v2, p0, Landroid/renderscript/Double2;->x:D

    iget-wide v4, p1, Landroid/renderscript/Double2;->x:D

    mul-double/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Double2;->x:D

    iget-wide v2, p0, Landroid/renderscript/Double2;->y:D

    iget-wide v4, p1, Landroid/renderscript/Double2;->y:D

    mul-double/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Double2;->y:D

    return-object v0
.end method

.method public static sub(Landroid/renderscript/Double2;D)Landroid/renderscript/Double2;
    .registers 8

    new-instance v0, Landroid/renderscript/Double2;

    invoke-direct {v0}, Landroid/renderscript/Double2;-><init>()V

    iget-wide v2, p0, Landroid/renderscript/Double2;->x:D

    sub-double/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Double2;->x:D

    iget-wide v2, p0, Landroid/renderscript/Double2;->y:D

    sub-double/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Double2;->y:D

    return-object v0
.end method

.method public static sub(Landroid/renderscript/Double2;Landroid/renderscript/Double2;)Landroid/renderscript/Double2;
    .registers 8

    new-instance v0, Landroid/renderscript/Double2;

    invoke-direct {v0}, Landroid/renderscript/Double2;-><init>()V

    iget-wide v2, p0, Landroid/renderscript/Double2;->x:D

    iget-wide v4, p1, Landroid/renderscript/Double2;->x:D

    sub-double/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Double2;->x:D

    iget-wide v2, p0, Landroid/renderscript/Double2;->y:D

    iget-wide v4, p1, Landroid/renderscript/Double2;->y:D

    sub-double/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Double2;->y:D

    return-object v0
.end method


# virtual methods
.method public add(D)V
    .registers 6

    iget-wide v0, p0, Landroid/renderscript/Double2;->x:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double2;->x:D

    iget-wide v0, p0, Landroid/renderscript/Double2;->y:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double2;->y:D

    return-void
.end method

.method public add(Landroid/renderscript/Double2;)V
    .registers 6

    iget-wide v0, p0, Landroid/renderscript/Double2;->x:D

    iget-wide v2, p1, Landroid/renderscript/Double2;->x:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double2;->x:D

    iget-wide v0, p0, Landroid/renderscript/Double2;->y:D

    iget-wide v2, p1, Landroid/renderscript/Double2;->y:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double2;->y:D

    return-void
.end method

.method public addAt(ID)V
    .registers 6

    packed-switch p1, :pswitch_data_18

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_c
    iget-wide v0, p0, Landroid/renderscript/Double2;->x:D

    add-double/2addr v0, p2

    iput-wide v0, p0, Landroid/renderscript/Double2;->x:D

    return-void

    :pswitch_12
    iget-wide v0, p0, Landroid/renderscript/Double2;->y:D

    add-double/2addr v0, p2

    iput-wide v0, p0, Landroid/renderscript/Double2;->y:D

    return-void

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_c
        :pswitch_12
    .end packed-switch
.end method

.method public addMultiple(Landroid/renderscript/Double2;D)V
    .registers 8

    iget-wide v0, p0, Landroid/renderscript/Double2;->x:D

    iget-wide v2, p1, Landroid/renderscript/Double2;->x:D

    mul-double/2addr v2, p2

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double2;->x:D

    iget-wide v0, p0, Landroid/renderscript/Double2;->y:D

    iget-wide v2, p1, Landroid/renderscript/Double2;->y:D

    mul-double/2addr v2, p2

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double2;->y:D

    return-void
.end method

.method public copyTo([DI)V
    .registers 7

    iget-wide v0, p0, Landroid/renderscript/Double2;->x:D

    aput-wide v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    iget-wide v2, p0, Landroid/renderscript/Double2;->y:D

    aput-wide v2, p1, v0

    return-void
.end method

.method public div(D)V
    .registers 6

    iget-wide v0, p0, Landroid/renderscript/Double2;->x:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double2;->x:D

    iget-wide v0, p0, Landroid/renderscript/Double2;->y:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double2;->y:D

    return-void
.end method

.method public div(Landroid/renderscript/Double2;)V
    .registers 6

    iget-wide v0, p0, Landroid/renderscript/Double2;->x:D

    iget-wide v2, p1, Landroid/renderscript/Double2;->x:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double2;->x:D

    iget-wide v0, p0, Landroid/renderscript/Double2;->y:D

    iget-wide v2, p1, Landroid/renderscript/Double2;->y:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double2;->y:D

    return-void
.end method

.method public dotProduct(Landroid/renderscript/Double2;)D
    .registers 8

    iget-wide v0, p0, Landroid/renderscript/Double2;->x:D

    iget-wide v2, p1, Landroid/renderscript/Double2;->x:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Landroid/renderscript/Double2;->y:D

    iget-wide v4, p1, Landroid/renderscript/Double2;->y:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public elementSum()D
    .registers 5

    iget-wide v0, p0, Landroid/renderscript/Double2;->x:D

    iget-wide v2, p0, Landroid/renderscript/Double2;->y:D

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public get(I)D
    .registers 4

    packed-switch p1, :pswitch_data_12

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_c
    iget-wide v0, p0, Landroid/renderscript/Double2;->x:D

    return-wide v0

    :pswitch_f
    iget-wide v0, p0, Landroid/renderscript/Double2;->y:D

    return-wide v0

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_c
        :pswitch_f
    .end packed-switch
.end method

.method public length()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public mul(D)V
    .registers 6

    iget-wide v0, p0, Landroid/renderscript/Double2;->x:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double2;->x:D

    iget-wide v0, p0, Landroid/renderscript/Double2;->y:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double2;->y:D

    return-void
.end method

.method public mul(Landroid/renderscript/Double2;)V
    .registers 6

    iget-wide v0, p0, Landroid/renderscript/Double2;->x:D

    iget-wide v2, p1, Landroid/renderscript/Double2;->x:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double2;->x:D

    iget-wide v0, p0, Landroid/renderscript/Double2;->y:D

    iget-wide v2, p1, Landroid/renderscript/Double2;->y:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double2;->y:D

    return-void
.end method

.method public negate()V
    .registers 3

    iget-wide v0, p0, Landroid/renderscript/Double2;->x:D

    neg-double v0, v0

    iput-wide v0, p0, Landroid/renderscript/Double2;->x:D

    iget-wide v0, p0, Landroid/renderscript/Double2;->y:D

    neg-double v0, v0

    iput-wide v0, p0, Landroid/renderscript/Double2;->y:D

    return-void
.end method

.method public set(Landroid/renderscript/Double2;)V
    .registers 4

    iget-wide v0, p1, Landroid/renderscript/Double2;->x:D

    iput-wide v0, p0, Landroid/renderscript/Double2;->x:D

    iget-wide v0, p1, Landroid/renderscript/Double2;->y:D

    iput-wide v0, p0, Landroid/renderscript/Double2;->y:D

    return-void
.end method

.method public setAt(ID)V
    .registers 6

    packed-switch p1, :pswitch_data_12

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_c
    iput-wide p2, p0, Landroid/renderscript/Double2;->x:D

    return-void

    :pswitch_f
    iput-wide p2, p0, Landroid/renderscript/Double2;->y:D

    return-void

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_c
        :pswitch_f
    .end packed-switch
.end method

.method public setValues(DD)V
    .registers 6

    iput-wide p1, p0, Landroid/renderscript/Double2;->x:D

    iput-wide p3, p0, Landroid/renderscript/Double2;->y:D

    return-void
.end method

.method public sub(D)V
    .registers 6

    iget-wide v0, p0, Landroid/renderscript/Double2;->x:D

    sub-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double2;->x:D

    iget-wide v0, p0, Landroid/renderscript/Double2;->y:D

    sub-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double2;->y:D

    return-void
.end method

.method public sub(Landroid/renderscript/Double2;)V
    .registers 6

    iget-wide v0, p0, Landroid/renderscript/Double2;->x:D

    iget-wide v2, p1, Landroid/renderscript/Double2;->x:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double2;->x:D

    iget-wide v0, p0, Landroid/renderscript/Double2;->y:D

    iget-wide v2, p1, Landroid/renderscript/Double2;->y:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double2;->y:D

    return-void
.end method
