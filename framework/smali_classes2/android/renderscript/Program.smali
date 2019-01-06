.class public Landroid/renderscript/Program;
.super Landroid/renderscript/BaseObj;
.source "Program.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/Program$BaseProgramBuilder;,
        Landroid/renderscript/Program$ProgramParam;,
        Landroid/renderscript/Program$TextureType;
    }
.end annotation


# static fields
.field static final MAX_CONSTANT:I = 0x8

.field static final MAX_INPUT:I = 0x8

.field static final MAX_OUTPUT:I = 0x8

.field static final MAX_TEXTURE:I = 0x8


# instance fields
.field mConstants:[Landroid/renderscript/Type;

.field mInputs:[Landroid/renderscript/Element;

.field mOutputs:[Landroid/renderscript/Element;

.field mShader:Ljava/lang/String;

.field mTextureCount:I

.field mTextureNames:[Ljava/lang/String;

.field mTextures:[Landroid/renderscript/Program$TextureType;


# direct methods
.method constructor <init>(JLandroid/renderscript/RenderScript;)V
    .registers 7

    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    iget-object v0, p0, Landroid/renderscript/Program;->guard:Ldalvik/system/CloseGuard;

    const-string/jumbo v1, "destroy"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bindConstants(Landroid/renderscript/Allocation;I)V
    .registers 9

    if-ltz p2, :cond_7

    iget-object v0, p0, Landroid/renderscript/Program;->mConstants:[Landroid/renderscript/Type;

    array-length v0, v0

    if-lt p2, v0, :cond_10

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Slot ID out of range."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    if-eqz p1, :cond_33

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    iget-object v1, p0, Landroid/renderscript/Program;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v1}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v0

    iget-object v2, p0, Landroid/renderscript/Program;->mConstants:[Landroid/renderscript/Type;

    aget-object v2, v2, p2

    iget-object v3, p0, Landroid/renderscript/Program;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2, v3}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_33

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Allocation type does not match slot type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_33
    if-eqz p1, :cond_48

    iget-object v0, p0, Landroid/renderscript/Program;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p1, v0}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    :goto_3b
    iget-object v0, p0, Landroid/renderscript/Program;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Program;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Program;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->nProgramBindConstants(JIJ)V

    return-void

    :cond_48
    const-wide/16 v4, 0x0

    goto :goto_3b
.end method

.method public bindSampler(Landroid/renderscript/Sampler;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-object v0, p0, Landroid/renderscript/Program;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    if-ltz p2, :cond_b

    iget v0, p0, Landroid/renderscript/Program;->mTextureCount:I

    if-lt p2, v0, :cond_14

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Slot ID out of range."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    if-eqz p1, :cond_29

    iget-object v0, p0, Landroid/renderscript/Program;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p1, v0}, Landroid/renderscript/Sampler;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    :goto_1c
    iget-object v0, p0, Landroid/renderscript/Program;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Program;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Program;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->nProgramBindSampler(JIJ)V

    return-void

    :cond_29
    const-wide/16 v4, 0x0

    goto :goto_1c
.end method

.method public bindTexture(Landroid/renderscript/Allocation;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-object v0, p0, Landroid/renderscript/Program;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    if-ltz p2, :cond_b

    iget v0, p0, Landroid/renderscript/Program;->mTextureCount:I

    if-lt p2, v0, :cond_14

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Slot ID out of range."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    if-eqz p1, :cond_31

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->hasFaces()Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Landroid/renderscript/Program;->mTextures:[Landroid/renderscript/Program$TextureType;

    aget-object v0, v0, p2

    sget-object v1, Landroid/renderscript/Program$TextureType;->TEXTURE_CUBE:Landroid/renderscript/Program$TextureType;

    if-eq v0, v1, :cond_31

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cannot bind cubemap to 2d texture slot"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_31
    if-eqz p1, :cond_46

    iget-object v0, p0, Landroid/renderscript/Program;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p1, v0}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    :goto_39
    iget-object v0, p0, Landroid/renderscript/Program;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Program;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Program;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->nProgramBindTexture(JIJ)V

    return-void

    :cond_46
    const-wide/16 v4, 0x0

    goto :goto_39
.end method

.method public getConstant(I)Landroid/renderscript/Type;
    .registers 4

    if-ltz p1, :cond_7

    iget-object v0, p0, Landroid/renderscript/Program;->mConstants:[Landroid/renderscript/Type;

    array-length v0, v0

    if-lt p1, v0, :cond_10

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Slot ID out of range."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    iget-object v0, p0, Landroid/renderscript/Program;->mConstants:[Landroid/renderscript/Type;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getConstantCount()I
    .registers 2

    iget-object v0, p0, Landroid/renderscript/Program;->mConstants:[Landroid/renderscript/Type;

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/renderscript/Program;->mConstants:[Landroid/renderscript/Type;

    array-length v0, v0

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public getTextureCount()I
    .registers 2

    iget v0, p0, Landroid/renderscript/Program;->mTextureCount:I

    return v0
.end method

.method public getTextureName(I)Ljava/lang/String;
    .registers 4

    if-ltz p1, :cond_6

    iget v0, p0, Landroid/renderscript/Program;->mTextureCount:I

    if-lt p1, v0, :cond_f

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Slot ID out of range."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    iget-object v0, p0, Landroid/renderscript/Program;->mTextureNames:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getTextureType(I)Landroid/renderscript/Program$TextureType;
    .registers 4

    if-ltz p1, :cond_6

    iget v0, p0, Landroid/renderscript/Program;->mTextureCount:I

    if-lt p1, v0, :cond_f

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Slot ID out of range."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    iget-object v0, p0, Landroid/renderscript/Program;->mTextures:[Landroid/renderscript/Program$TextureType;

    aget-object v0, v0, p1

    return-object v0
.end method
