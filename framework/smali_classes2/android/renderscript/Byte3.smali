.class public Landroid/renderscript/Byte3;
.super Ljava/lang/Object;
.source "Byte3.java"


# instance fields
.field public x:B

.field public y:B

.field public z:B


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(BBB)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Landroid/renderscript/Byte3;->x:B

    iput-byte p2, p0, Landroid/renderscript/Byte3;->y:B

    iput-byte p3, p0, Landroid/renderscript/Byte3;->z:B

    return-void
.end method

.method public constructor <init>(Landroid/renderscript/Byte3;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-byte v0, p1, Landroid/renderscript/Byte3;->x:B

    iput-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    iget-byte v0, p1, Landroid/renderscript/Byte3;->y:B

    iput-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    iget-byte v0, p1, Landroid/renderscript/Byte3;->z:B

    iput-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    return-void
.end method

.method public static add(Landroid/renderscript/Byte3;B)Landroid/renderscript/Byte3;
    .registers 4

    new-instance v0, Landroid/renderscript/Byte3;

    invoke-direct {v0}, Landroid/renderscript/Byte3;-><init>()V

    iget-byte v1, p0, Landroid/renderscript/Byte3;->x:B

    add-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->x:B

    iget-byte v1, p0, Landroid/renderscript/Byte3;->y:B

    add-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->y:B

    iget-byte v1, p0, Landroid/renderscript/Byte3;->z:B

    add-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->z:B

    return-object v0
.end method

.method public static add(Landroid/renderscript/Byte3;Landroid/renderscript/Byte3;)Landroid/renderscript/Byte3;
    .registers 5

    new-instance v0, Landroid/renderscript/Byte3;

    invoke-direct {v0}, Landroid/renderscript/Byte3;-><init>()V

    iget-byte v1, p0, Landroid/renderscript/Byte3;->x:B

    iget-byte v2, p1, Landroid/renderscript/Byte3;->x:B

    add-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->x:B

    iget-byte v1, p0, Landroid/renderscript/Byte3;->y:B

    iget-byte v2, p1, Landroid/renderscript/Byte3;->y:B

    add-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->y:B

    iget-byte v1, p0, Landroid/renderscript/Byte3;->z:B

    iget-byte v2, p1, Landroid/renderscript/Byte3;->z:B

    add-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->z:B

    return-object v0
.end method

.method public static div(Landroid/renderscript/Byte3;B)Landroid/renderscript/Byte3;
    .registers 4

    new-instance v0, Landroid/renderscript/Byte3;

    invoke-direct {v0}, Landroid/renderscript/Byte3;-><init>()V

    iget-byte v1, p0, Landroid/renderscript/Byte3;->x:B

    div-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->x:B

    iget-byte v1, p0, Landroid/renderscript/Byte3;->y:B

    div-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->y:B

    iget-byte v1, p0, Landroid/renderscript/Byte3;->z:B

    div-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->z:B

    return-object v0
.end method

.method public static div(Landroid/renderscript/Byte3;Landroid/renderscript/Byte3;)Landroid/renderscript/Byte3;
    .registers 5

    new-instance v0, Landroid/renderscript/Byte3;

    invoke-direct {v0}, Landroid/renderscript/Byte3;-><init>()V

    iget-byte v1, p0, Landroid/renderscript/Byte3;->x:B

    iget-byte v2, p1, Landroid/renderscript/Byte3;->x:B

    div-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->x:B

    iget-byte v1, p0, Landroid/renderscript/Byte3;->y:B

    iget-byte v2, p1, Landroid/renderscript/Byte3;->y:B

    div-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->y:B

    iget-byte v1, p0, Landroid/renderscript/Byte3;->z:B

    iget-byte v2, p1, Landroid/renderscript/Byte3;->z:B

    div-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->z:B

    return-object v0
.end method

.method public static dotProduct(Landroid/renderscript/Byte3;Landroid/renderscript/Byte3;)B
    .registers 5

    iget-byte v0, p1, Landroid/renderscript/Byte3;->x:B

    iget-byte v1, p0, Landroid/renderscript/Byte3;->x:B

    mul-int/2addr v0, v1

    int-to-byte v0, v0

    iget-byte v1, p1, Landroid/renderscript/Byte3;->y:B

    iget-byte v2, p0, Landroid/renderscript/Byte3;->y:B

    mul-int/2addr v1, v2

    int-to-byte v1, v1

    add-int/2addr v0, v1

    int-to-byte v0, v0

    iget-byte v1, p1, Landroid/renderscript/Byte3;->z:B

    iget-byte v2, p0, Landroid/renderscript/Byte3;->z:B

    mul-int/2addr v1, v2

    int-to-byte v1, v1

    add-int/2addr v0, v1

    int-to-byte v0, v0

    return v0
.end method

.method public static mul(Landroid/renderscript/Byte3;B)Landroid/renderscript/Byte3;
    .registers 4

    new-instance v0, Landroid/renderscript/Byte3;

    invoke-direct {v0}, Landroid/renderscript/Byte3;-><init>()V

    iget-byte v1, p0, Landroid/renderscript/Byte3;->x:B

    mul-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->x:B

    iget-byte v1, p0, Landroid/renderscript/Byte3;->y:B

    mul-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->y:B

    iget-byte v1, p0, Landroid/renderscript/Byte3;->z:B

    mul-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->z:B

    return-object v0
.end method

.method public static mul(Landroid/renderscript/Byte3;Landroid/renderscript/Byte3;)Landroid/renderscript/Byte3;
    .registers 5

    new-instance v0, Landroid/renderscript/Byte3;

    invoke-direct {v0}, Landroid/renderscript/Byte3;-><init>()V

    iget-byte v1, p0, Landroid/renderscript/Byte3;->x:B

    iget-byte v2, p1, Landroid/renderscript/Byte3;->x:B

    mul-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->x:B

    iget-byte v1, p0, Landroid/renderscript/Byte3;->y:B

    iget-byte v2, p1, Landroid/renderscript/Byte3;->y:B

    mul-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->y:B

    iget-byte v1, p0, Landroid/renderscript/Byte3;->z:B

    iget-byte v2, p1, Landroid/renderscript/Byte3;->z:B

    mul-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->z:B

    return-object v0
.end method

.method public static sub(Landroid/renderscript/Byte3;B)Landroid/renderscript/Byte3;
    .registers 4

    new-instance v0, Landroid/renderscript/Byte3;

    invoke-direct {v0}, Landroid/renderscript/Byte3;-><init>()V

    iget-byte v1, p0, Landroid/renderscript/Byte3;->x:B

    sub-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->x:B

    iget-byte v1, p0, Landroid/renderscript/Byte3;->y:B

    sub-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->y:B

    iget-byte v1, p0, Landroid/renderscript/Byte3;->z:B

    sub-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->z:B

    return-object v0
.end method

.method public static sub(Landroid/renderscript/Byte3;Landroid/renderscript/Byte3;)Landroid/renderscript/Byte3;
    .registers 5

    new-instance v0, Landroid/renderscript/Byte3;

    invoke-direct {v0}, Landroid/renderscript/Byte3;-><init>()V

    iget-byte v1, p0, Landroid/renderscript/Byte3;->x:B

    iget-byte v2, p1, Landroid/renderscript/Byte3;->x:B

    sub-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->x:B

    iget-byte v1, p0, Landroid/renderscript/Byte3;->y:B

    iget-byte v2, p1, Landroid/renderscript/Byte3;->y:B

    sub-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->y:B

    iget-byte v1, p0, Landroid/renderscript/Byte3;->z:B

    iget-byte v2, p1, Landroid/renderscript/Byte3;->z:B

    sub-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->z:B

    return-object v0
.end method


# virtual methods
.method public add(B)V
    .registers 3

    iget-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    add-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    iget-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    add-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    iget-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    add-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    return-void
.end method

.method public add(Landroid/renderscript/Byte3;)V
    .registers 4

    iget-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    iget-byte v1, p1, Landroid/renderscript/Byte3;->x:B

    add-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    iget-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    iget-byte v1, p1, Landroid/renderscript/Byte3;->y:B

    add-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    iget-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    iget-byte v1, p1, Landroid/renderscript/Byte3;->z:B

    add-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    return-void
.end method

.method public addAt(IB)V
    .registers 5

    packed-switch p1, :pswitch_data_22

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_c
    iget-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    add-int/2addr v0, p2

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    return-void

    :pswitch_13
    iget-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    add-int/2addr v0, p2

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    return-void

    :pswitch_1a
    iget-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    add-int/2addr v0, p2

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    return-void

    nop

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_c
        :pswitch_13
        :pswitch_1a
    .end packed-switch
.end method

.method public addMultiple(Landroid/renderscript/Byte3;B)V
    .registers 5

    iget-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    iget-byte v1, p1, Landroid/renderscript/Byte3;->x:B

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    iget-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    iget-byte v1, p1, Landroid/renderscript/Byte3;->y:B

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    iget-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    iget-byte v1, p1, Landroid/renderscript/Byte3;->z:B

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    return-void
.end method

.method public copyTo([BI)V
    .registers 5

    iget-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    aput-byte v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    iget-byte v1, p0, Landroid/renderscript/Byte3;->y:B

    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x2

    iget-byte v1, p0, Landroid/renderscript/Byte3;->z:B

    aput-byte v1, p1, v0

    return-void
.end method

.method public div(B)V
    .registers 3

    iget-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    div-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    iget-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    div-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    iget-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    div-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    return-void
.end method

.method public div(Landroid/renderscript/Byte3;)V
    .registers 4

    iget-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    iget-byte v1, p1, Landroid/renderscript/Byte3;->x:B

    div-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    iget-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    iget-byte v1, p1, Landroid/renderscript/Byte3;->y:B

    div-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    iget-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    iget-byte v1, p1, Landroid/renderscript/Byte3;->z:B

    div-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    return-void
.end method

.method public dotProduct(Landroid/renderscript/Byte3;)B
    .registers 5

    iget-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    iget-byte v1, p1, Landroid/renderscript/Byte3;->x:B

    mul-int/2addr v0, v1

    int-to-byte v0, v0

    iget-byte v1, p0, Landroid/renderscript/Byte3;->y:B

    iget-byte v2, p1, Landroid/renderscript/Byte3;->y:B

    mul-int/2addr v1, v2

    int-to-byte v1, v1

    add-int/2addr v0, v1

    int-to-byte v0, v0

    iget-byte v1, p0, Landroid/renderscript/Byte3;->z:B

    iget-byte v2, p1, Landroid/renderscript/Byte3;->z:B

    mul-int/2addr v1, v2

    int-to-byte v1, v1

    add-int/2addr v0, v1

    int-to-byte v0, v0

    return v0
.end method

.method public elementSum()B
    .registers 3

    iget-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    iget-byte v1, p0, Landroid/renderscript/Byte3;->y:B

    add-int/2addr v0, v1

    iget-byte v1, p0, Landroid/renderscript/Byte3;->z:B

    add-int/2addr v0, v1

    int-to-byte v0, v0

    return v0
.end method

.method public get(I)B
    .registers 4

    packed-switch p1, :pswitch_data_16

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_c
    iget-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    return v0

    :pswitch_f
    iget-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    return v0

    :pswitch_12
    iget-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    return v0

    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_c
        :pswitch_f
        :pswitch_12
    .end packed-switch
.end method

.method public length()B
    .registers 2

    const/4 v0, 0x3

    return v0
.end method

.method public mul(B)V
    .registers 3

    iget-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    mul-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    iget-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    mul-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    iget-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    mul-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    return-void
.end method

.method public mul(Landroid/renderscript/Byte3;)V
    .registers 4

    iget-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    iget-byte v1, p1, Landroid/renderscript/Byte3;->x:B

    mul-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    iget-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    iget-byte v1, p1, Landroid/renderscript/Byte3;->y:B

    mul-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    iget-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    iget-byte v1, p1, Landroid/renderscript/Byte3;->z:B

    mul-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    return-void
.end method

.method public negate()V
    .registers 2

    iget-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    neg-int v0, v0

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    iget-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    neg-int v0, v0

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    iget-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    neg-int v0, v0

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    return-void
.end method

.method public set(Landroid/renderscript/Byte3;)V
    .registers 3

    iget-byte v0, p1, Landroid/renderscript/Byte3;->x:B

    iput-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    iget-byte v0, p1, Landroid/renderscript/Byte3;->y:B

    iput-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    iget-byte v0, p1, Landroid/renderscript/Byte3;->z:B

    iput-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    return-void
.end method

.method public setAt(IB)V
    .registers 5

    packed-switch p1, :pswitch_data_16

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_c
    iput-byte p2, p0, Landroid/renderscript/Byte3;->x:B

    return-void

    :pswitch_f
    iput-byte p2, p0, Landroid/renderscript/Byte3;->y:B

    return-void

    :pswitch_12
    iput-byte p2, p0, Landroid/renderscript/Byte3;->z:B

    return-void

    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_c
        :pswitch_f
        :pswitch_12
    .end packed-switch
.end method

.method public setValues(BBB)V
    .registers 4

    iput-byte p1, p0, Landroid/renderscript/Byte3;->x:B

    iput-byte p2, p0, Landroid/renderscript/Byte3;->y:B

    iput-byte p3, p0, Landroid/renderscript/Byte3;->z:B

    return-void
.end method

.method public sub(B)V
    .registers 3

    iget-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    sub-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    iget-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    sub-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    iget-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    sub-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    return-void
.end method

.method public sub(Landroid/renderscript/Byte3;)V
    .registers 4

    iget-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    iget-byte v1, p1, Landroid/renderscript/Byte3;->x:B

    sub-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    iget-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    iget-byte v1, p1, Landroid/renderscript/Byte3;->y:B

    sub-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    iget-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    iget-byte v1, p1, Landroid/renderscript/Byte3;->z:B

    sub-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    return-void
.end method
