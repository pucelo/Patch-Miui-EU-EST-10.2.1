.class public final Landroid/renderscript/ScriptGroup$Builder;
.super Ljava/lang/Object;
.source "ScriptGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ScriptGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mKernelCount:I

.field private mLines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/renderscript/ScriptGroup$ConnectLine;",
            ">;"
        }
    .end annotation
.end field

.field private mNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/renderscript/ScriptGroup$Node;",
            ">;"
        }
    .end annotation
.end field

.field private mRS:Landroid/renderscript/RenderScript;


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/renderscript/ScriptGroup$Builder;->mLines:Ljava/util/ArrayList;

    iput-object p1, p0, Landroid/renderscript/ScriptGroup$Builder;->mRS:Landroid/renderscript/RenderScript;

    return-void
.end method

.method private findNode(Landroid/renderscript/Script$KernelID;)Landroid/renderscript/ScriptGroup$Node;
    .registers 6

    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_29

    iget-object v3, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/renderscript/ScriptGroup$Node;

    const/4 v1, 0x0

    :goto_12
    iget-object v3, v2, Landroid/renderscript/ScriptGroup$Node;->mKernels:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_26

    iget-object v3, v2, Landroid/renderscript/ScriptGroup$Node;->mKernels:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne p1, v3, :cond_23

    return-object v2

    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_29
    const/4 v3, 0x0

    return-object v3
.end method

.method private findNode(Landroid/renderscript/Script;)Landroid/renderscript/ScriptGroup$Node;
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_21

    iget-object v1, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/renderscript/ScriptGroup$Node;

    iget-object v1, v1, Landroid/renderscript/ScriptGroup$Node;->mScript:Landroid/renderscript/Script;

    if-ne p1, v1, :cond_1e

    iget-object v1, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/renderscript/ScriptGroup$Node;

    return-object v1

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_21
    const/4 v1, 0x0

    return-object v1
.end method

.method private mergeDAGs(II)V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_22

    iget-object v1, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/renderscript/ScriptGroup$Node;

    iget v1, v1, Landroid/renderscript/ScriptGroup$Node;->dagNumber:I

    if-ne v1, p2, :cond_1f

    iget-object v1, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/renderscript/ScriptGroup$Node;

    iput p1, v1, Landroid/renderscript/ScriptGroup$Node;->dagNumber:I

    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_22
    return-void
.end method

.method private validateCycle(Landroid/renderscript/ScriptGroup$Node;Landroid/renderscript/ScriptGroup$Node;)V
    .registers 8

    const/4 v1, 0x0

    :goto_1
    iget-object v3, p1, Landroid/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_50

    iget-object v3, p1, Landroid/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/renderscript/ScriptGroup$ConnectLine;

    iget-object v3, v0, Landroid/renderscript/ScriptGroup$ConnectLine;->mToK:Landroid/renderscript/Script$KernelID;

    if-eqz v3, :cond_2f

    iget-object v3, v0, Landroid/renderscript/ScriptGroup$ConnectLine;->mToK:Landroid/renderscript/Script$KernelID;

    iget-object v3, v3, Landroid/renderscript/Script$KernelID;->mScript:Landroid/renderscript/Script;

    invoke-direct {p0, v3}, Landroid/renderscript/ScriptGroup$Builder;->findNode(Landroid/renderscript/Script;)Landroid/renderscript/ScriptGroup$Node;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/renderscript/ScriptGroup$Node;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    new-instance v3, Landroid/renderscript/RSInvalidStateException;

    const-string/jumbo v4, "Loops in group not allowed."

    invoke-direct {v3, v4}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2c
    invoke-direct {p0, v2, p2}, Landroid/renderscript/ScriptGroup$Builder;->validateCycle(Landroid/renderscript/ScriptGroup$Node;Landroid/renderscript/ScriptGroup$Node;)V

    :cond_2f
    iget-object v3, v0, Landroid/renderscript/ScriptGroup$ConnectLine;->mToF:Landroid/renderscript/Script$FieldID;

    if-eqz v3, :cond_4d

    iget-object v3, v0, Landroid/renderscript/ScriptGroup$ConnectLine;->mToF:Landroid/renderscript/Script$FieldID;

    iget-object v3, v3, Landroid/renderscript/Script$FieldID;->mScript:Landroid/renderscript/Script;

    invoke-direct {p0, v3}, Landroid/renderscript/ScriptGroup$Builder;->findNode(Landroid/renderscript/Script;)Landroid/renderscript/ScriptGroup$Node;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/renderscript/ScriptGroup$Node;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    new-instance v3, Landroid/renderscript/RSInvalidStateException;

    const-string/jumbo v4, "Loops in group not allowed."

    invoke-direct {v3, v4}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_4a
    invoke-direct {p0, v2, p2}, Landroid/renderscript/ScriptGroup$Builder;->validateCycle(Landroid/renderscript/ScriptGroup$Node;Landroid/renderscript/ScriptGroup$Node;)V

    :cond_4d
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_50
    return-void
.end method

.method private validateDAG()V
    .registers 8

    const/4 v6, 0x0

    const/4 v0, 0x0

    :goto_2
    iget-object v4, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_3c

    iget-object v4, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/renderscript/ScriptGroup$Node;

    iget-object v4, v3, Landroid/renderscript/ScriptGroup$Node;->mInputs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_39

    iget-object v4, v3, Landroid/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_34

    iget-object v4, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_34

    const-string/jumbo v2, "Groups cannot contain unconnected scripts"

    new-instance v4, Landroid/renderscript/RSInvalidStateException;

    invoke-direct {v4, v2}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_34
    add-int/lit8 v4, v0, 0x1

    invoke-direct {p0, v3, v4}, Landroid/renderscript/ScriptGroup$Builder;->validateDAGRecurse(Landroid/renderscript/ScriptGroup$Node;I)V

    :cond_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3c
    iget-object v4, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/renderscript/ScriptGroup$Node;

    iget v1, v4, Landroid/renderscript/ScriptGroup$Node;->dagNumber:I

    const/4 v0, 0x0

    :goto_47
    iget-object v4, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_67

    iget-object v4, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/renderscript/ScriptGroup$Node;

    iget v4, v4, Landroid/renderscript/ScriptGroup$Node;->dagNumber:I

    if-eq v4, v1, :cond_64

    new-instance v4, Landroid/renderscript/RSInvalidStateException;

    const-string/jumbo v5, "Multiple DAGs in group not allowed."

    invoke-direct {v4, v5}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_64
    add-int/lit8 v0, v0, 0x1

    goto :goto_47

    :cond_67
    return-void
.end method

.method private validateDAGRecurse(Landroid/renderscript/ScriptGroup$Node;I)V
    .registers 7

    iget v3, p1, Landroid/renderscript/ScriptGroup$Node;->dagNumber:I

    if-eqz v3, :cond_e

    iget v3, p1, Landroid/renderscript/ScriptGroup$Node;->dagNumber:I

    if-eq v3, p2, :cond_e

    iget v3, p1, Landroid/renderscript/ScriptGroup$Node;->dagNumber:I

    invoke-direct {p0, v3, p2}, Landroid/renderscript/ScriptGroup$Builder;->mergeDAGs(II)V

    return-void

    :cond_e
    iput p2, p1, Landroid/renderscript/ScriptGroup$Node;->dagNumber:I

    const/4 v1, 0x0

    :goto_11
    iget-object v3, p1, Landroid/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_42

    iget-object v3, p1, Landroid/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/renderscript/ScriptGroup$ConnectLine;

    iget-object v3, v0, Landroid/renderscript/ScriptGroup$ConnectLine;->mToK:Landroid/renderscript/Script$KernelID;

    if-eqz v3, :cond_30

    iget-object v3, v0, Landroid/renderscript/ScriptGroup$ConnectLine;->mToK:Landroid/renderscript/Script$KernelID;

    iget-object v3, v3, Landroid/renderscript/Script$KernelID;->mScript:Landroid/renderscript/Script;

    invoke-direct {p0, v3}, Landroid/renderscript/ScriptGroup$Builder;->findNode(Landroid/renderscript/Script;)Landroid/renderscript/ScriptGroup$Node;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Landroid/renderscript/ScriptGroup$Builder;->validateDAGRecurse(Landroid/renderscript/ScriptGroup$Node;I)V

    :cond_30
    iget-object v3, v0, Landroid/renderscript/ScriptGroup$ConnectLine;->mToF:Landroid/renderscript/Script$FieldID;

    if-eqz v3, :cond_3f

    iget-object v3, v0, Landroid/renderscript/ScriptGroup$ConnectLine;->mToF:Landroid/renderscript/Script$FieldID;

    iget-object v3, v3, Landroid/renderscript/Script$FieldID;->mScript:Landroid/renderscript/Script;

    invoke-direct {p0, v3}, Landroid/renderscript/ScriptGroup$Builder;->findNode(Landroid/renderscript/Script;)Landroid/renderscript/ScriptGroup$Node;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Landroid/renderscript/ScriptGroup$Builder;->validateDAGRecurse(Landroid/renderscript/ScriptGroup$Node;I)V

    :cond_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_42
    return-void
.end method


# virtual methods
.method public addConnection(Landroid/renderscript/Type;Landroid/renderscript/Script$KernelID;Landroid/renderscript/Script$FieldID;)Landroid/renderscript/ScriptGroup$Builder;
    .registers 9

    invoke-direct {p0, p2}, Landroid/renderscript/ScriptGroup$Builder;->findNode(Landroid/renderscript/Script$KernelID;)Landroid/renderscript/ScriptGroup$Node;

    move-result-object v1

    if-nez v1, :cond_f

    new-instance v3, Landroid/renderscript/RSInvalidStateException;

    const-string/jumbo v4, "From script not found."

    invoke-direct {v3, v4}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_f
    iget-object v3, p3, Landroid/renderscript/Script$FieldID;->mScript:Landroid/renderscript/Script;

    invoke-direct {p0, v3}, Landroid/renderscript/ScriptGroup$Builder;->findNode(Landroid/renderscript/Script;)Landroid/renderscript/ScriptGroup$Node;

    move-result-object v2

    if-nez v2, :cond_20

    new-instance v3, Landroid/renderscript/RSInvalidStateException;

    const-string/jumbo v4, "To script not found."

    invoke-direct {v3, v4}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_20
    new-instance v0, Landroid/renderscript/ScriptGroup$ConnectLine;

    invoke-direct {v0, p1, p2, p3}, Landroid/renderscript/ScriptGroup$ConnectLine;-><init>(Landroid/renderscript/Type;Landroid/renderscript/Script$KernelID;Landroid/renderscript/Script$FieldID;)V

    iget-object v3, p0, Landroid/renderscript/ScriptGroup$Builder;->mLines:Ljava/util/ArrayList;

    new-instance v4, Landroid/renderscript/ScriptGroup$ConnectLine;

    invoke-direct {v4, p1, p2, p3}, Landroid/renderscript/ScriptGroup$ConnectLine;-><init>(Landroid/renderscript/Type;Landroid/renderscript/Script$KernelID;Landroid/renderscript/Script$FieldID;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v1, Landroid/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v2, Landroid/renderscript/ScriptGroup$Node;->mInputs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v1, v1}, Landroid/renderscript/ScriptGroup$Builder;->validateCycle(Landroid/renderscript/ScriptGroup$Node;Landroid/renderscript/ScriptGroup$Node;)V

    return-object p0
.end method

.method public addConnection(Landroid/renderscript/Type;Landroid/renderscript/Script$KernelID;Landroid/renderscript/Script$KernelID;)Landroid/renderscript/ScriptGroup$Builder;
    .registers 9

    invoke-direct {p0, p2}, Landroid/renderscript/ScriptGroup$Builder;->findNode(Landroid/renderscript/Script$KernelID;)Landroid/renderscript/ScriptGroup$Node;

    move-result-object v1

    if-nez v1, :cond_f

    new-instance v3, Landroid/renderscript/RSInvalidStateException;

    const-string/jumbo v4, "From script not found."

    invoke-direct {v3, v4}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_f
    invoke-direct {p0, p3}, Landroid/renderscript/ScriptGroup$Builder;->findNode(Landroid/renderscript/Script$KernelID;)Landroid/renderscript/ScriptGroup$Node;

    move-result-object v2

    if-nez v2, :cond_1e

    new-instance v3, Landroid/renderscript/RSInvalidStateException;

    const-string/jumbo v4, "To script not found."

    invoke-direct {v3, v4}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1e
    new-instance v0, Landroid/renderscript/ScriptGroup$ConnectLine;

    invoke-direct {v0, p1, p2, p3}, Landroid/renderscript/ScriptGroup$ConnectLine;-><init>(Landroid/renderscript/Type;Landroid/renderscript/Script$KernelID;Landroid/renderscript/Script$KernelID;)V

    iget-object v3, p0, Landroid/renderscript/ScriptGroup$Builder;->mLines:Ljava/util/ArrayList;

    new-instance v4, Landroid/renderscript/ScriptGroup$ConnectLine;

    invoke-direct {v4, p1, p2, p3}, Landroid/renderscript/ScriptGroup$ConnectLine;-><init>(Landroid/renderscript/Type;Landroid/renderscript/Script$KernelID;Landroid/renderscript/Script$KernelID;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v1, Landroid/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v2, Landroid/renderscript/ScriptGroup$Node;->mInputs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v1, v1}, Landroid/renderscript/ScriptGroup$Builder;->validateCycle(Landroid/renderscript/ScriptGroup$Node;Landroid/renderscript/ScriptGroup$Node;)V

    return-object p0
.end method

.method public addKernel(Landroid/renderscript/Script$KernelID;)Landroid/renderscript/ScriptGroup$Builder;
    .registers 5

    iget-object v1, p0, Landroid/renderscript/ScriptGroup$Builder;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_11

    new-instance v1, Landroid/renderscript/RSInvalidStateException;

    const-string/jumbo v2, "Kernels may not be added once connections exist."

    invoke-direct {v1, v2}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_11
    invoke-direct {p0, p1}, Landroid/renderscript/ScriptGroup$Builder;->findNode(Landroid/renderscript/Script$KernelID;)Landroid/renderscript/ScriptGroup$Node;

    move-result-object v1

    if-eqz v1, :cond_18

    return-object p0

    :cond_18
    iget v1, p0, Landroid/renderscript/ScriptGroup$Builder;->mKernelCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/renderscript/ScriptGroup$Builder;->mKernelCount:I

    iget-object v1, p1, Landroid/renderscript/Script$KernelID;->mScript:Landroid/renderscript/Script;

    invoke-direct {p0, v1}, Landroid/renderscript/ScriptGroup$Builder;->findNode(Landroid/renderscript/Script;)Landroid/renderscript/ScriptGroup$Node;

    move-result-object v0

    if-nez v0, :cond_32

    new-instance v0, Landroid/renderscript/ScriptGroup$Node;

    iget-object v1, p1, Landroid/renderscript/Script$KernelID;->mScript:Landroid/renderscript/Script;

    invoke-direct {v0, v1}, Landroid/renderscript/ScriptGroup$Node;-><init>(Landroid/renderscript/Script;)V

    iget-object v1, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_32
    iget-object v1, v0, Landroid/renderscript/ScriptGroup$Node;->mKernels:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public create()Landroid/renderscript/ScriptGroup;
    .registers 27

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_15

    new-instance v2, Landroid/renderscript/RSInvalidStateException;

    const-string/jumbo v23, "Empty script groups are not allowed"

    move-object/from16 v0, v23

    invoke-direct {v2, v0}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_15
    const/4 v9, 0x0

    :goto_16
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v9, v2, :cond_33

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/renderscript/ScriptGroup$Node;

    const/16 v23, 0x0

    move/from16 v0, v23

    iput v0, v2, Landroid/renderscript/ScriptGroup$Node;->dagNumber:I

    add-int/lit8 v9, v9, 0x1

    goto :goto_16

    :cond_33
    invoke-direct/range {p0 .. p0}, Landroid/renderscript/ScriptGroup$Builder;->validateDAG()V

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget v2, v0, Landroid/renderscript/ScriptGroup$Builder;->mKernelCount:I

    new-array v3, v2, [J

    const/16 v16, 0x0

    const/4 v9, 0x0

    :goto_49
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v9, v2, :cond_e6

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/renderscript/ScriptGroup$Node;

    const/4 v10, 0x0

    :goto_5e
    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/renderscript/ScriptGroup$Node;->mKernels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v10, v2, :cond_e2

    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/renderscript/ScriptGroup$Node;->mKernels:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/renderscript/Script$KernelID;

    add-int/lit8 v17, v16, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptGroup$Builder;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/renderscript/Script$KernelID;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v24

    aput-wide v24, v3, v16

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v11, 0x0

    :goto_83
    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/renderscript/ScriptGroup$Node;->mInputs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_a1

    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/renderscript/ScriptGroup$Node;->mInputs:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/renderscript/ScriptGroup$ConnectLine;

    iget-object v2, v2, Landroid/renderscript/ScriptGroup$ConnectLine;->mToK:Landroid/renderscript/Script$KernelID;

    move-object/from16 v0, v19

    if-ne v2, v0, :cond_9e

    const/4 v12, 0x1

    :cond_9e
    add-int/lit8 v11, v11, 0x1

    goto :goto_83

    :cond_a1
    const/4 v11, 0x0

    :goto_a2
    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_c0

    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/renderscript/ScriptGroup$ConnectLine;

    iget-object v2, v2, Landroid/renderscript/ScriptGroup$ConnectLine;->mFrom:Landroid/renderscript/Script$KernelID;

    move-object/from16 v0, v19

    if-ne v2, v0, :cond_bd

    const/4 v13, 0x1

    :cond_bd
    add-int/lit8 v11, v11, 0x1

    goto :goto_a2

    :cond_c0
    if-nez v12, :cond_ce

    new-instance v2, Landroid/renderscript/ScriptGroup$IO;

    move-object/from16 v0, v19

    invoke-direct {v2, v0}, Landroid/renderscript/ScriptGroup$IO;-><init>(Landroid/renderscript/Script$KernelID;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_ce
    if-nez v13, :cond_dc

    new-instance v2, Landroid/renderscript/ScriptGroup$IO;

    move-object/from16 v0, v19

    invoke-direct {v2, v0}, Landroid/renderscript/ScriptGroup$IO;-><init>(Landroid/renderscript/Script$KernelID;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_dc
    add-int/lit8 v10, v10, 0x1

    move/from16 v16, v17

    goto/16 :goto_5e

    :cond_e2
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_49

    :cond_e6
    move-object/from16 v0, p0

    iget v2, v0, Landroid/renderscript/ScriptGroup$Builder;->mKernelCount:I

    move/from16 v0, v16

    if-eq v0, v2, :cond_f9

    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string/jumbo v23, "Count mismatch, should not happen."

    move-object/from16 v0, v23

    invoke-direct {v2, v0}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_f9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptGroup$Builder;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v4, v2, [J

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptGroup$Builder;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v5, v2, [J

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptGroup$Builder;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v6, v2, [J

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptGroup$Builder;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v7, v2, [J

    const/4 v9, 0x0

    :goto_122
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptGroup$Builder;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v9, v2, :cond_181

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptGroup$Builder;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/renderscript/ScriptGroup$ConnectLine;

    iget-object v2, v8, Landroid/renderscript/ScriptGroup$ConnectLine;->mFrom:Landroid/renderscript/Script$KernelID;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/renderscript/ScriptGroup$Builder;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/renderscript/Script$KernelID;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v24

    aput-wide v24, v4, v9

    iget-object v2, v8, Landroid/renderscript/ScriptGroup$ConnectLine;->mToK:Landroid/renderscript/Script$KernelID;

    if-eqz v2, :cond_15a

    iget-object v2, v8, Landroid/renderscript/ScriptGroup$ConnectLine;->mToK:Landroid/renderscript/Script$KernelID;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/renderscript/ScriptGroup$Builder;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/renderscript/Script$KernelID;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v24

    aput-wide v24, v5, v9

    :cond_15a
    iget-object v2, v8, Landroid/renderscript/ScriptGroup$ConnectLine;->mToF:Landroid/renderscript/Script$FieldID;

    if-eqz v2, :cond_16e

    iget-object v2, v8, Landroid/renderscript/ScriptGroup$ConnectLine;->mToF:Landroid/renderscript/Script$FieldID;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/renderscript/ScriptGroup$Builder;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/renderscript/Script$FieldID;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v24

    aput-wide v24, v6, v9

    :cond_16e
    iget-object v2, v8, Landroid/renderscript/ScriptGroup$ConnectLine;->mAllocationType:Landroid/renderscript/Type;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/renderscript/ScriptGroup$Builder;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v24

    aput-wide v24, v7, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_122

    :cond_181
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptGroup$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual/range {v2 .. v7}, Landroid/renderscript/RenderScript;->nScriptGroupCreate([J[J[J[J[J)J

    move-result-wide v14

    const-wide/16 v24, 0x0

    cmp-long v2, v14, v24

    if-nez v2, :cond_19a

    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string/jumbo v23, "Object creation error, should not happen."

    move-object/from16 v0, v23

    invoke-direct {v2, v0}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_19a
    new-instance v22, Landroid/renderscript/ScriptGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptGroup$Builder;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, v22

    invoke-direct {v0, v14, v15, v2}, Landroid/renderscript/ScriptGroup;-><init>(JLandroid/renderscript/RenderScript;)V

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/renderscript/ScriptGroup$IO;

    move-object/from16 v0, v22

    iput-object v2, v0, Landroid/renderscript/ScriptGroup;->mOutputs:[Landroid/renderscript/ScriptGroup$IO;

    const/4 v9, 0x0

    :goto_1b0
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v9, v2, :cond_1c9

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/renderscript/ScriptGroup;->mOutputs:[Landroid/renderscript/ScriptGroup$IO;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/renderscript/ScriptGroup$IO;

    aput-object v2, v23, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1b0

    :cond_1c9
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/renderscript/ScriptGroup$IO;

    move-object/from16 v0, v22

    iput-object v2, v0, Landroid/renderscript/ScriptGroup;->mInputs:[Landroid/renderscript/ScriptGroup$IO;

    const/4 v9, 0x0

    :goto_1d4
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v9, v2, :cond_1ed

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/renderscript/ScriptGroup;->mInputs:[Landroid/renderscript/ScriptGroup$IO;

    move-object/from16 v23, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/renderscript/ScriptGroup$IO;

    aput-object v2, v23, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1d4

    :cond_1ed
    return-object v22
.end method
