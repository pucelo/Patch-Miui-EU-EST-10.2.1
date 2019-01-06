.class public Landroid/renderscript/Double4;
.super Ljava/lang/Object;
.source "Double4.java"


# instance fields
.field public w:D

.field public x:D

.field public y:D

.field public z:D


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(DDDD)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/renderscript/Double4;->x:D

    iput-wide p3, p0, Landroid/renderscript/Double4;->y:D

    iput-wide p5, p0, Landroid/renderscript/Double4;->z:D

    iput-wide p7, p0, Landroid/renderscript/Double4;->w:D

    return-void
.end method

.method public constructor <init>(Landroid/renderscript/Double4;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v0, p1, Landroid/renderscript/Double4;->x:D

    iput-wide v0, p0, Landroid/renderscript/Double4;->x:D

    iget-wide v0, p1, Landroid/renderscript/Double4;->y:D

    iput-wide v0, p0, Landroid/renderscript/Double4;->y:D

    iget-wide v0, p1, Landroid/renderscript/Double4;->z:D

    iput-wide v0, p0, Landroid/renderscript/Double4;->z:D

    iget-wide v0, p1, Landroid/renderscript/Double4;->w:D

    iput-wide v0, p0, Landroid/renderscript/Double4;->w:D

    return-void
.end method

.method public static add(Landroid/renderscript/Double4;D)Landroid/renderscript/Double4;
    .registers 8

    new-instance v0, Landroid/renderscript/Double4;

    invoke-direct {v0}, Landroid/renderscript/Double4;-><init>()V

    iget-wide v2, p0, Landroid/renderscript/Double4;->x:D

    add-double/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Double4;->x:D

    iget-wide v2, p0, Landroid/renderscript/Double4;->y:D

    add-double/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Double4;->y:D

    iget-wide v2, p0, Landroid/renderscript/Double4;->z:D

    add-double/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Double4;->z:D

    iget-wide v2, p0, Landroid/renderscript/Double4;->w:D

    add-double/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Double4;->w:D

    return-object v0
.end method

.method public static add(Landroid/renderscript/Double4;Landroid/renderscript/Double4;)Landroid/renderscript/Double4;
    .registers 8

    new-instance v0, Landroid/renderscript/Double4;

    invoke-direct {v0}, Landroid/renderscript/Double4;-><init>()V

    iget-wide v2, p0, Landroid/renderscript/Double4;->x:D

    iget-wide v4, p1, Landroid/renderscript/Double4;->x:D

    add-double/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Double4;->x:D

    iget-wide v2, p0, Landroid/renderscript/Double4;->y:D

    iget-wide v4, p1, Landroid/renderscript/Double4;->y:D

    add-double/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Double4;->y:D

    iget-wide v2, p0, Landroid/renderscript/Double4;->z:D

    iget-wide v4, p1, Landroid/renderscript/Double4;->z:D

    add-double/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Double4;->z:D

    iget-wide v2, p0, Landroid/renderscript/Double4;->w:D

    iget-wide v4, p1, Landroid/renderscript/Double4;->w:D

    add-double/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Double4;->w:D

    return-object v0
.end method

.method public static div(Landroid/renderscript/Double4;D)Landroid/renderscript/Double4;
    .registers 8

    new-instance v0, Landroid/renderscript/Double4;

    invoke-direct {v0}, Landroid/renderscript/Double4;-><init>()V

    iget-wide v2, p0, Landroid/renderscript/Double4;->x:D

    div-double/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Double4;->x:D

    iget-wide v2, p0, Landroid/renderscript/Double4;->y:D

    div-double/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Double4;->y:D

    iget-wide v2, p0, Landroid/renderscript/Double4;->z:D

    div-double/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Double4;->z:D

    iget-wide v2, p0, Landroid/renderscript/Double4;->w:D

    div-double/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Double4;->w:D

    return-object v0
.end method

.method public static div(Landroid/renderscript/Double4;Landroid/renderscript/Double4;)Landroid/renderscript/Double4;
    .registers 8

    new-instance v0, Landroid/renderscript/Double4;

    invoke-direct {v0}, Landroid/renderscript/Double4;-><init>()V

    iget-wide v2, p0, Landroid/renderscript/Double4;->x:D

    iget-wide v4, p1, Landroid/renderscript/Double4;->x:D

    div-double/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Double4;->x:D

    iget-wide v2, p0, Landroid/renderscript/Double4;->y:D

    iget-wide v4, p1, Landroid/renderscript/Double4;->y:D

    div-double/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Double4;->y:D

    iget-wide v2, p0, Landroid/renderscript/Double4;->z:D

    iget-wide v4, p1, Landroid/renderscript/Double4;->z:D

    div-double/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Double4;->z:D

    iget-wide v2, p0, Landroid/renderscript/Double4;->w:D

    iget-wide v4, p1, Landroid/renderscript/Double4;->w:D

    div-double/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Double4;->w:D

    return-object v0
.end method

.method public static dotProduct(Landroid/renderscript/Double4;Landroid/renderscript/Double4;)D
    .registers 8

    iget-wide v0, p1, Landroid/renderscript/Double4;->x:D

    iget-wide v2, p0, Landroid/renderscript/Double4;->x:D

    mul-double/2addr v0, v2

    iget-wide v2, p1, Landroid/renderscript/Double4;->y:D

    iget-wide v4, p0, Landroid/renderscript/Double4;->y:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p1, Landroid/renderscript/Double4;->z:D

    iget-wide v4, p0, Landroid/renderscript/Double4;->z:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p1, Landroid/renderscript/Double4;->w:D

    iget-wide v4, p0, Landroid/renderscript/Double4;->w:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public static mul(Landroid/renderscript/Double4;D)Landroid/renderscript/Double4;
    .registers 8

    new-instance v0, Landroid/renderscript/Double4;

    invoke-direct {v0}, Landroid/renderscript/Double4;-><init>()V

    iget-wide v2, p0, Landroid/renderscript/Double4;->x:D

    mul-double/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Double4;->x:D

    iget-wide v2, p0, Landroid/renderscript/Double4;->y:D

    mul-double/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Double4;->y:D

    iget-wide v2, p0, Landroid/renderscript/Double4;->z:D

    mul-double/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Double4;->z:D

    iget-wide v2, p0, Landroid/renderscript/Double4;->w:D

    mul-double/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Double4;->w:D

    return-object v0
.end method

.method public static mul(Landroid/renderscript/Double4;Landroid/renderscript/Double4;)Landroid/renderscript/Double4;
    .registers 8

    new-instance v0, Landroid/renderscript/Double4;

    invoke-direct {v0}, Landroid/renderscript/Double4;-><init>()V

    iget-wide v2, p0, Landroid/renderscript/Double4;->x:D

    iget-wide v4, p1, Landroid/renderscript/Double4;->x:D

    mul-double/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Double4;->x:D

    iget-wide v2, p0, Landroid/renderscript/Double4;->y:D

    iget-wide v4, p1, Landroid/renderscript/Double4;->y:D

    mul-double/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Double4;->y:D

    iget-wide v2, p0, Landroid/renderscript/Double4;->z:D

    iget-wide v4, p1, Landroid/renderscript/Double4;->z:D

    mul-double/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Double4;->z:D

    iget-wide v2, p0, Landroid/renderscript/Double4;->w:D

    iget-wide v4, p1, Landroid/renderscript/Double4;->w:D

    mul-double/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Double4;->w:D

    return-object v0
.end method

.method public static sub(Landroid/renderscript/Double4;D)Landroid/renderscript/Double4;
    .registers 8

    new-instance v0, Landroid/renderscript/Double4;

    invoke-direct {v0}, Landroid/renderscript/Double4;-><init>()V

    iget-wide v2, p0, Landroid/renderscript/Double4;->x:D

    sub-double/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Double4;->x:D

    iget-wide v2, p0, Landroid/renderscript/Double4;->y:D

    sub-double/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Double4;->y:D

    iget-wide v2, p0, Landroid/renderscript/Double4;->z:D

    sub-double/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Double4;->z:D

    iget-wide v2, p0, Landroid/renderscript/Double4;->w:D

    sub-double/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Double4;->w:D

    return-object v0
.end method

.method public static sub(Landroid/renderscript/Double4;Landroid/renderscript/Double4;)Landroid/renderscript/Double4;
    .registers 8

    new-instance v0, Landroid/renderscript/Double4;

    invoke-direct {v0}, Landroid/renderscript/Double4;-><init>()V

    iget-wide v2, p0, Landroid/renderscript/Double4;->x:D

    iget-wide v4, p1, Landroid/renderscript/Double4;->x:D

    sub-double/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Double4;->x:D

    iget-wide v2, p0, Landroid/renderscript/Double4;->y:D

    iget-wide v4, p1, Landroid/renderscript/Double4;->y:D

    sub-double/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Double4;->y:D

    iget-wide v2, p0, Landroid/renderscript/Double4;->z:D

    iget-wide v4, p1, Landroid/renderscript/Double4;->z:D

    sub-double/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Double4;->z:D

    iget-wide v2, p0, Landroid/renderscript/Double4;->w:D

    iget-wide v4, p1, Landroid/renderscript/Double4;->w:D

    sub-double/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Double4;->w:D

    return-object v0
.end method


# virtual methods
.method public add(D)V
    .registers 6

    iget-wide v0, p0, Landroid/renderscript/Double4;->x:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double4;->x:D

    iget-wide v0, p0, Landroid/renderscript/Double4;->y:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double4;->y:D

    iget-wide v0, p0, Landroid/renderscript/Double4;->z:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double4;->z:D

    iget-wide v0, p0, Landroid/renderscript/Double4;->w:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double4;->w:D

    return-void
.end method

.method public add(Landroid/renderscript/Double4;)V
    .registers 6

    iget-wide v0, p0, Landroid/renderscript/Double4;->x:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->x:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double4;->x:D

    iget-wide v0, p0, Landroid/renderscript/Double4;->y:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->y:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double4;->y:D

    iget-wide v0, p0, Landroid/renderscript/Double4;->z:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->z:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double4;->z:D

    iget-wide v0, p0, Landroid/renderscript/Double4;->w:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->w:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double4;->w:D

    return-void
.end method

.method public addAt(ID)V
    .registers 6

    packed-switch p1, :pswitch_data_24

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_c
    iget-wide v0, p0, Landroid/renderscript/Double4;->x:D

    add-double/2addr v0, p2

    iput-wide v0, p0, Landroid/renderscript/Double4;->x:D

    return-void

    :pswitch_12
    iget-wide v0, p0, Landroid/renderscript/Double4;->y:D

    add-double/2addr v0, p2

    iput-wide v0, p0, Landroid/renderscript/Double4;->y:D

    return-void

    :pswitch_18
    iget-wide v0, p0, Landroid/renderscript/Double4;->z:D

    add-double/2addr v0, p2

    iput-wide v0, p0, Landroid/renderscript/Double4;->z:D

    return-void

    :pswitch_1e
    iget-wide v0, p0, Landroid/renderscript/Double4;->w:D

    add-double/2addr v0, p2

    iput-wide v0, p0, Landroid/renderscript/Double4;->w:D

    return-void

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_c
        :pswitch_12
        :pswitch_18
        :pswitch_1e
    .end packed-switch
.end method

.method public addMultiple(Landroid/renderscript/Double4;D)V
    .registers 8

    iget-wide v0, p0, Landroid/renderscript/Double4;->x:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->x:D

    mul-double/2addr v2, p2

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double4;->x:D

    iget-wide v0, p0, Landroid/renderscript/Double4;->y:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->y:D

    mul-double/2addr v2, p2

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double4;->y:D

    iget-wide v0, p0, Landroid/renderscript/Double4;->z:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->z:D

    mul-double/2addr v2, p2

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double4;->z:D

    iget-wide v0, p0, Landroid/renderscript/Double4;->w:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->w:D

    mul-double/2addr v2, p2

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double4;->w:D

    return-void
.end method

.method public copyTo([DI)V
    .registers 7

    iget-wide v0, p0, Landroid/renderscript/Double4;->x:D

    aput-wide v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    iget-wide v2, p0, Landroid/renderscript/Double4;->y:D

    aput-wide v2, p1, v0

    add-int/lit8 v0, p2, 0x2

    iget-wide v2, p0, Landroid/renderscript/Double4;->z:D

    aput-wide v2, p1, v0

    add-int/lit8 v0, p2, 0x3

    iget-wide v2, p0, Landroid/renderscript/Double4;->w:D

    aput-wide v2, p1, v0

    return-void
.end method

.method public div(D)V
    .registers 6

    iget-wide v0, p0, Landroid/renderscript/Double4;->x:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double4;->x:D

    iget-wide v0, p0, Landroid/renderscript/Double4;->y:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double4;->y:D

    iget-wide v0, p0, Landroid/renderscript/Double4;->z:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double4;->z:D

    iget-wide v0, p0, Landroid/renderscript/Double4;->w:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double4;->w:D

    return-void
.end method

.method public div(Landroid/renderscript/Double4;)V
    .registers 6

    iget-wide v0, p0, Landroid/renderscript/Double4;->x:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->x:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double4;->x:D

    iget-wide v0, p0, Landroid/renderscript/Double4;->y:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->y:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double4;->y:D

    iget-wide v0, p0, Landroid/renderscript/Double4;->z:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->z:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double4;->z:D

    iget-wide v0, p0, Landroid/renderscript/Double4;->w:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->w:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double4;->w:D

    return-void
.end method

.method public dotProduct(Landroid/renderscript/Double4;)D
    .registers 8

    iget-wide v0, p0, Landroid/renderscript/Double4;->x:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->x:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Landroid/renderscript/Double4;->y:D

    iget-wide v4, p1, Landroid/renderscript/Double4;->y:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Landroid/renderscript/Double4;->z:D

    iget-wide v4, p1, Landroid/renderscript/Double4;->z:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Landroid/renderscript/Double4;->w:D

    iget-wide v4, p1, Landroid/renderscript/Double4;->w:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public elementSum()D
    .registers 5

    iget-wide v0, p0, Landroid/renderscript/Double4;->x:D

    iget-wide v2, p0, Landroid/renderscript/Double4;->y:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Landroid/renderscript/Double4;->z:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Landroid/renderscript/Double4;->w:D

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public get(I)D
    .registers 4

    packed-switch p1, :pswitch_data_18

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_c
    iget-wide v0, p0, Landroid/renderscript/Double4;->x:D

    return-wide v0

    :pswitch_f
    iget-wide v0, p0, Landroid/renderscript/Double4;->y:D

    return-wide v0

    :pswitch_12
    iget-wide v0, p0, Landroid/renderscript/Double4;->z:D

    return-wide v0

    :pswitch_15
    iget-wide v0, p0, Landroid/renderscript/Double4;->w:D

    return-wide v0

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_c
        :pswitch_f
        :pswitch_12
        :pswitch_15
    .end packed-switch
.end method

.method public length()I
    .registers 2

    const/4 v0, 0x4

    return v0
.end method

.method public mul(D)V
    .registers 6

    iget-wide v0, p0, Landroid/renderscript/Double4;->x:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double4;->x:D

    iget-wide v0, p0, Landroid/renderscript/Double4;->y:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double4;->y:D

    iget-wide v0, p0, Landroid/renderscript/Double4;->z:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double4;->z:D

    iget-wide v0, p0, Landroid/renderscript/Double4;->w:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double4;->w:D

    return-void
.end method

.method public mul(Landroid/renderscript/Double4;)V
    .registers 6

    iget-wide v0, p0, Landroid/renderscript/Double4;->x:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->x:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double4;->x:D

    iget-wide v0, p0, Landroid/renderscript/Double4;->y:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->y:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double4;->y:D

    iget-wide v0, p0, Landroid/renderscript/Double4;->z:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->z:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double4;->z:D

    iget-wide v0, p0, Landroid/renderscript/Double4;->w:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->w:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double4;->w:D

    return-void
.end method

.method public negate()V
    .registers 3

    iget-wide v0, p0, Landroid/renderscript/Double4;->x:D

    neg-double v0, v0

    iput-wide v0, p0, Landroid/renderscript/Double4;->x:D

    iget-wide v0, p0, Landroid/renderscript/Double4;->y:D

    neg-double v0, v0

    iput-wide v0, p0, Landroid/renderscript/Double4;->y:D

    iget-wide v0, p0, Landroid/renderscript/Double4;->z:D

    neg-double v0, v0

    iput-wide v0, p0, Landroid/renderscript/Double4;->z:D

    iget-wide v0, p0, Landroid/renderscript/Double4;->w:D

    neg-double v0, v0

    iput-wide v0, p0, Landroid/renderscript/Double4;->w:D

    return-void
.end method

.method public set(Landroid/renderscript/Double4;)V
    .registers 4

    iget-wide v0, p1, Landroid/renderscript/Double4;->x:D

    iput-wide v0, p0, Landroid/renderscript/Double4;->x:D

    iget-wide v0, p1, Landroid/renderscript/Double4;->y:D

    iput-wide v0, p0, Landroid/renderscript/Double4;->y:D

    iget-wide v0, p1, Landroid/renderscript/Double4;->z:D

    iput-wide v0, p0, Landroid/renderscript/Double4;->z:D

    iget-wide v0, p1, Landroid/renderscript/Double4;->w:D

    iput-wide v0, p0, Landroid/renderscript/Double4;->w:D

    return-void
.end method

.method public setAt(ID)V
    .registers 6

    packed-switch p1, :pswitch_data_18

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_c
    iput-wide p2, p0, Landroid/renderscript/Double4;->x:D

    return-void

    :pswitch_f
    iput-wide p2, p0, Landroid/renderscript/Double4;->y:D

    return-void

    :pswitch_12
    iput-wide p2, p0, Landroid/renderscript/Double4;->z:D

    return-void

    :pswitch_15
    iput-wide p2, p0, Landroid/renderscript/Double4;->w:D

    return-void

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_c
        :pswitch_f
        :pswitch_12
        :pswitch_15
    .end packed-switch
.end method

.method public setValues(DDDD)V
    .registers 10

    iput-wide p1, p0, Landroid/renderscript/Double4;->x:D

    iput-wide p3, p0, Landroid/renderscript/Double4;->y:D

    iput-wide p5, p0, Landroid/renderscript/Double4;->z:D

    iput-wide p7, p0, Landroid/renderscript/Double4;->w:D

    return-void
.end method

.method public sub(D)V
    .registers 6

    iget-wide v0, p0, Landroid/renderscript/Double4;->x:D

    sub-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double4;->x:D

    iget-wide v0, p0, Landroid/renderscript/Double4;->y:D

    sub-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double4;->y:D

    iget-wide v0, p0, Landroid/renderscript/Double4;->z:D

    sub-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double4;->z:D

    iget-wide v0, p0, Landroid/renderscript/Double4;->w:D

    sub-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double4;->w:D

    return-void
.end method

.method public sub(Landroid/renderscript/Double4;)V
    .registers 6

    iget-wide v0, p0, Landroid/renderscript/Double4;->x:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->x:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double4;->x:D

    iget-wide v0, p0, Landroid/renderscript/Double4;->y:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->y:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double4;->y:D

    iget-wide v0, p0, Landroid/renderscript/Double4;->z:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->z:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double4;->z:D

    iget-wide v0, p0, Landroid/renderscript/Double4;->w:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->w:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double4;->w:D

    return-void
.end method
