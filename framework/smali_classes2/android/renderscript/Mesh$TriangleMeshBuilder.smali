.class public Landroid/renderscript/Mesh$TriangleMeshBuilder;
.super Ljava/lang/Object;
.source "Mesh.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Mesh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TriangleMeshBuilder"
.end annotation


# static fields
.field public static final COLOR:I = 0x1

.field public static final NORMAL:I = 0x2

.field public static final TEXTURE_0:I = 0x100


# instance fields
.field mA:F

.field mB:F

.field mElement:Landroid/renderscript/Element;

.field mFlags:I

.field mG:F

.field mIndexCount:I

.field mIndexData:[S

.field mMaxIndex:I

.field mNX:F

.field mNY:F

.field mNZ:F

.field mR:F

.field mRS:Landroid/renderscript/RenderScript;

.field mS0:F

.field mT0:F

.field mVtxCount:I

.field mVtxData:[F

.field mVtxSize:I


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;II)V
    .registers 9

    const/16 v4, 0x80

    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mNX:F

    iput v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mNY:F

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mNZ:F

    iput v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mS0:F

    iput v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mT0:F

    iput v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mR:F

    iput v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mG:F

    iput v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mB:F

    iput v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mA:F

    iput-object p1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mRS:Landroid/renderscript/RenderScript;

    iput v3, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    iput v3, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mMaxIndex:I

    iput v3, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexCount:I

    new-array v0, v4, [F

    iput-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    new-array v0, v4, [S

    iput-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexData:[S

    iput p2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxSize:I

    iput p3, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mFlags:I

    const/4 v0, 0x2

    if-lt p2, v0, :cond_37

    const/4 v0, 0x3

    if-le p2, v0, :cond_40

    :cond_37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Vertex size out of range."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_40
    return-void
.end method

.method private latch()V
    .registers 5

    const/4 v3, 0x4

    iget v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3a

    invoke-direct {p0, v3}, Landroid/renderscript/Mesh$TriangleMeshBuilder;->makeSpace(I)V

    iget-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    iget v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mR:F

    aput v2, v0, v1

    iget-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    iget v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mG:F

    aput v2, v0, v1

    iget-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    iget v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mB:F

    aput v2, v0, v1

    iget-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    iget v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mA:F

    aput v2, v0, v1

    :cond_3a
    iget v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mFlags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_5c

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/renderscript/Mesh$TriangleMeshBuilder;->makeSpace(I)V

    iget-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    iget v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mS0:F

    aput v2, v0, v1

    iget-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    iget v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mT0:F

    aput v2, v0, v1

    :cond_5c
    iget v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_94

    invoke-direct {p0, v3}, Landroid/renderscript/Mesh$TriangleMeshBuilder;->makeSpace(I)V

    iget-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    iget v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mNX:F

    aput v2, v0, v1

    iget-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    iget v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mNY:F

    aput v2, v0, v1

    iget-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    iget v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mNZ:F

    aput v2, v0, v1

    iget-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    const/4 v2, 0x0

    aput v2, v0, v1

    :cond_94
    iget v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mMaxIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mMaxIndex:I

    return-void
.end method

.method private makeSpace(I)V
    .registers 6

    const/4 v3, 0x0

    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/2addr v1, p1

    iget-object v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    array-length v2, v2

    if-lt v1, v2, :cond_1a

    iget-object v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [F

    iget-object v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    iget-object v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([FI[FII)V

    iput-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    :cond_1a
    return-void
.end method


# virtual methods
.method public addTriangle(III)Landroid/renderscript/Mesh$TriangleMeshBuilder;
    .registers 8

    const/4 v3, 0x0

    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mMaxIndex:I

    if-ge p1, v1, :cond_7

    if-gez p1, :cond_10

    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Index provided greater than vertex count."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10
    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mMaxIndex:I

    if-ge p2, v1, :cond_7

    if-ltz p2, :cond_7

    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mMaxIndex:I

    if-ge p3, v1, :cond_7

    if-ltz p3, :cond_7

    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexCount:I

    add-int/lit8 v1, v1, 0x3

    iget-object v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexData:[S

    array-length v2, v2

    if-lt v1, v2, :cond_36

    iget-object v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexData:[S

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [S

    iget-object v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexData:[S

    iget-object v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexData:[S

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([SI[SII)V

    iput-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexData:[S

    :cond_36
    iget-object v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexData:[S

    iget v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexCount:I

    int-to-short v3, p1

    aput-short v3, v1, v2

    iget-object v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexData:[S

    iget v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexCount:I

    int-to-short v3, p2

    aput-short v3, v1, v2

    iget-object v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexData:[S

    iget v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexCount:I

    int-to-short v3, p3

    aput-short v3, v1, v2

    return-object p0
.end method

.method public addVertex(FF)Landroid/renderscript/Mesh$TriangleMeshBuilder;
    .registers 6

    const/4 v1, 0x2

    iget v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxSize:I

    if-eq v0, v1, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "add mistmatch with declared components."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    invoke-direct {p0, v1}, Landroid/renderscript/Mesh$TriangleMeshBuilder;->makeSpace(I)V

    iget-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    aput p1, v0, v1

    iget-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    aput p2, v0, v1

    invoke-direct {p0}, Landroid/renderscript/Mesh$TriangleMeshBuilder;->latch()V

    return-object p0
.end method

.method public addVertex(FFF)Landroid/renderscript/Mesh$TriangleMeshBuilder;
    .registers 7

    iget v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxSize:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "add mistmatch with declared components."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/renderscript/Mesh$TriangleMeshBuilder;->makeSpace(I)V

    iget-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    aput p1, v0, v1

    iget-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    aput p2, v0, v1

    iget-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    aput p3, v0, v1

    iget-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    invoke-direct {p0}, Landroid/renderscript/Mesh$TriangleMeshBuilder;->latch()V

    return-object p0
.end method

.method public create(Z)Landroid/renderscript/Mesh;
    .registers 11

    const/4 v8, 0x1

    const/4 v7, 0x0

    new-instance v0, Landroid/renderscript/Element$Builder;

    iget-object v4, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v0, v4}, Landroid/renderscript/Element$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    iget-object v4, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mRS:Landroid/renderscript/RenderScript;

    sget-object v5, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    iget v6, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxSize:I

    invoke-static {v4, v5, v6}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v4

    const-string/jumbo v5, "position"

    invoke-virtual {v0, v4, v5}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    iget v4, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mFlags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2b

    iget-object v4, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v4}, Landroid/renderscript/Element;->F32_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    const-string/jumbo v5, "color"

    invoke-virtual {v0, v4, v5}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    :cond_2b
    iget v4, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mFlags:I

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_3d

    iget-object v4, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v4}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    const-string/jumbo v5, "texture0"

    invoke-virtual {v0, v4, v5}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    :cond_3d
    iget v4, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mFlags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_4f

    iget-object v4, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v4}, Landroid/renderscript/Element;->F32_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    const-string/jumbo v5, "normal"

    invoke-virtual {v0, v4, v5}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    :cond_4f
    invoke-virtual {v0}, Landroid/renderscript/Element$Builder;->create()Landroid/renderscript/Element;

    move-result-object v4

    iput-object v4, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mElement:Landroid/renderscript/Element;

    const/4 v3, 0x1

    if-eqz p1, :cond_59

    const/4 v3, 0x5

    :cond_59
    new-instance v2, Landroid/renderscript/Mesh$Builder;

    iget-object v4, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v2, v4, v3}, Landroid/renderscript/Mesh$Builder;-><init>(Landroid/renderscript/RenderScript;I)V

    iget-object v4, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mElement:Landroid/renderscript/Element;

    iget v5, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mMaxIndex:I

    invoke-virtual {v2, v4, v5}, Landroid/renderscript/Mesh$Builder;->addVertexType(Landroid/renderscript/Element;I)Landroid/renderscript/Mesh$Builder;

    iget-object v4, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v4}, Landroid/renderscript/Element;->U16(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    iget v5, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexCount:I

    sget-object v6, Landroid/renderscript/Mesh$Primitive;->TRIANGLE:Landroid/renderscript/Mesh$Primitive;

    invoke-virtual {v2, v4, v5, v6}, Landroid/renderscript/Mesh$Builder;->addIndexSetType(Landroid/renderscript/Element;ILandroid/renderscript/Mesh$Primitive;)Landroid/renderscript/Mesh$Builder;

    invoke-virtual {v2}, Landroid/renderscript/Mesh$Builder;->create()Landroid/renderscript/Mesh;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/renderscript/Mesh;->getVertexAllocation(I)Landroid/renderscript/Allocation;

    move-result-object v4

    iget v5, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mMaxIndex:I

    iget-object v6, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    invoke-virtual {v4, v7, v5, v6}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(II[F)V

    if-eqz p1, :cond_8c

    invoke-virtual {v1, v7}, Landroid/renderscript/Mesh;->getVertexAllocation(I)Landroid/renderscript/Allocation;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/renderscript/Allocation;->syncAll(I)V

    :cond_8c
    invoke-virtual {v1, v7}, Landroid/renderscript/Mesh;->getIndexSetAllocation(I)Landroid/renderscript/Allocation;

    move-result-object v4

    iget v5, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexCount:I

    iget-object v6, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexData:[S

    invoke-virtual {v4, v7, v5, v6}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(II[S)V

    if-eqz p1, :cond_a0

    invoke-virtual {v1, v7}, Landroid/renderscript/Mesh;->getIndexSetAllocation(I)Landroid/renderscript/Allocation;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/renderscript/Allocation;->syncAll(I)V

    :cond_a0
    return-object v1
.end method

.method public setColor(FFFF)Landroid/renderscript/Mesh$TriangleMeshBuilder;
    .registers 7

    iget v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_f

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "add mistmatch with declared components."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    iput p1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mR:F

    iput p2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mG:F

    iput p3, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mB:F

    iput p4, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mA:F

    return-object p0
.end method

.method public setNormal(FFF)Landroid/renderscript/Mesh$TriangleMeshBuilder;
    .registers 6

    iget v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_f

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "add mistmatch with declared components."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    iput p1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mNX:F

    iput p2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mNY:F

    iput p3, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mNZ:F

    return-object p0
.end method

.method public setTexture(FF)Landroid/renderscript/Mesh$TriangleMeshBuilder;
    .registers 5

    iget v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mFlags:I

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_f

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "add mistmatch with declared components."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    iput p1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mS0:F

    iput p2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mT0:F

    return-object p0
.end method
