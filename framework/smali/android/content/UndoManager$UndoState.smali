.class final Landroid/content/UndoManager$UndoState;
.super Ljava/lang/Object;
.source "UndoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/UndoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UndoState"
.end annotation


# instance fields
.field private mCanMerge:Z

.field private final mCommitId:I

.field private mExecuted:Z

.field private mLabel:Ljava/lang/CharSequence;

.field private final mManager:Landroid/content/UndoManager;

.field private final mOperations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/UndoOperation",
            "<*>;>;"
        }
    .end annotation
.end field

.field private mRecent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/UndoOperation",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/UndoManager;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/UndoManager$UndoState;->mCanMerge:Z

    iput-object p1, p0, Landroid/content/UndoManager$UndoState;->mManager:Landroid/content/UndoManager;

    iput p2, p0, Landroid/content/UndoManager$UndoState;->mCommitId:I

    return-void
.end method

.method constructor <init>(Landroid/content/UndoManager;Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .registers 11

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    iput-boolean v5, p0, Landroid/content/UndoManager$UndoState;->mCanMerge:Z

    iput-object p1, p0, Landroid/content/UndoManager$UndoState;->mManager:Landroid/content/UndoManager;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Landroid/content/UndoManager$UndoState;->mCommitId:I

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4e

    move v4, v5

    :goto_1d
    iput-boolean v4, p0, Landroid/content/UndoManager$UndoState;->mCanMerge:Z

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_50

    :goto_25
    iput-boolean v5, p0, Landroid/content/UndoManager$UndoState;->mExecuted:Z

    sget-object v4, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    iput-object v4, p0, Landroid/content/UndoManager$UndoState;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_36
    if-ge v1, v0, :cond_52

    iget-object v4, p0, Landroid/content/UndoManager$UndoState;->mManager:Landroid/content/UndoManager;

    invoke-virtual {v4, p2}, Landroid/content/UndoManager;->restoreOwner(Landroid/os/Parcel;)Landroid/content/UndoOwner;

    move-result-object v3

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/UndoOperation;

    iput-object v3, v2, Landroid/content/UndoOperation;->mOwner:Landroid/content/UndoOwner;

    iget-object v4, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    :cond_4e
    move v4, v6

    goto :goto_1d

    :cond_50
    move v5, v6

    goto :goto_25

    :cond_52
    return-void
.end method


# virtual methods
.method addOperation(Landroid/content/UndoOperation;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/UndoOperation",
            "<*>;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Already holds "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    iget-object v0, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/content/UndoManager$UndoState;->mRecent:Ljava/util/ArrayList;

    if-nez v0, :cond_37

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/UndoManager$UndoState;->mRecent:Ljava/util/ArrayList;

    iget-object v0, p0, Landroid/content/UndoManager$UndoState;->mRecent:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_37
    iget-object v0, p1, Landroid/content/UndoOperation;->mOwner:Landroid/content/UndoOwner;

    iget v1, v0, Landroid/content/UndoOwner;->mOpCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/content/UndoOwner;->mOpCount:I

    return-void
.end method

.method canMerge()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/UndoManager$UndoState;->mCanMerge:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Landroid/content/UndoManager$UndoState;->mExecuted:Z

    xor-int/lit8 v0, v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method commit()V
    .registers 5

    const/4 v3, 0x0

    iget-object v2, p0, Landroid/content/UndoManager$UndoState;->mRecent:Ljava/util/ArrayList;

    if-eqz v2, :cond_1c

    iget-object v2, p0, Landroid/content/UndoManager$UndoState;->mRecent:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_b
    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_1e

    iget-object v2, p0, Landroid/content/UndoManager$UndoState;->mRecent:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/UndoOperation;

    invoke-virtual {v2}, Landroid/content/UndoOperation;->commit()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_1c
    const/4 v0, 0x0

    goto :goto_b

    :cond_1e
    iput-object v3, p0, Landroid/content/UndoManager$UndoState;->mRecent:Ljava/util/ArrayList;

    return-void
.end method

.method countOperations()I
    .registers 2

    iget-object v0, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method destroy()V
    .registers 6

    iget-object v2, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_8
    if-ltz v0, :cond_55

    iget-object v2, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/UndoOperation;

    iget-object v1, v2, Landroid/content/UndoOperation;->mOwner:Landroid/content/UndoOwner;

    iget v2, v1, Landroid/content/UndoOwner;->mOpCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Landroid/content/UndoOwner;->mOpCount:I

    iget v2, v1, Landroid/content/UndoOwner;->mOpCount:I

    if-gtz v2, :cond_52

    iget v2, v1, Landroid/content/UndoOwner;->mOpCount:I

    if-gez v2, :cond_4d

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Underflow of op count on owner "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " in op "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4d
    iget-object v2, p0, Landroid/content/UndoManager$UndoState;->mManager:Landroid/content/UndoManager;

    invoke-virtual {v2, v1}, Landroid/content/UndoManager;->removeOwner(Landroid/content/UndoOwner;)V

    :cond_52
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_55
    return-void
.end method

.method getCommitId()I
    .registers 2

    iget v0, p0, Landroid/content/UndoManager$UndoState;->mCommitId:I

    return v0
.end method

.method getLabel()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/content/UndoManager$UndoState;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method getLastOperation(Ljava/lang/Class;Landroid/content/UndoOwner;)Landroid/content/UndoOperation;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/content/UndoOperation;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/content/UndoOwner;",
            ")TT;"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez p1, :cond_18

    if-nez p2, :cond_18

    if-lez v0, :cond_17

    iget-object v3, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/UndoOperation;

    :cond_17
    return-object v3

    :cond_18
    add-int/lit8 v1, v0, -0x1

    :goto_1a
    if-ltz v1, :cond_39

    iget-object v4, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/UndoOperation;

    if-eqz p2, :cond_2f

    invoke-virtual {v2}, Landroid/content/UndoOperation;->getOwner()Landroid/content/UndoOwner;

    move-result-object v4

    if-eq v4, p2, :cond_2f

    add-int/lit8 v1, v1, -0x1

    goto :goto_1a

    :cond_2f
    if-eqz p1, :cond_38

    invoke-virtual {v2}, Landroid/content/UndoOperation;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v4, p1, :cond_38

    return-object v3

    :cond_38
    return-object v2

    :cond_39
    return-object v3
.end method

.method hasData()Z
    .registers 4

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_9
    if-ltz v0, :cond_1e

    iget-object v1, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/UndoOperation;

    invoke-virtual {v1}, Landroid/content/UndoOperation;->hasData()Z

    move-result v1

    if-eqz v1, :cond_1b

    const/4 v1, 0x1

    return v1

    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_1e
    return v2
.end method

.method hasMultipleOwners()Z
    .registers 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v3, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, v5, :cond_b

    return v4

    :cond_b
    iget-object v3, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/UndoOperation;

    invoke-virtual {v3}, Landroid/content/UndoOperation;->getOwner()Landroid/content/UndoOwner;

    move-result-object v2

    const/4 v1, 0x1

    :goto_18
    if-ge v1, v0, :cond_2c

    iget-object v3, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/UndoOperation;

    invoke-virtual {v3}, Landroid/content/UndoOperation;->getOwner()Landroid/content/UndoOwner;

    move-result-object v3

    if-eq v3, v2, :cond_29

    return v5

    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_2c
    return v4
.end method

.method hasOperation(Landroid/content/UndoOwner;)Z
    .registers 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez p1, :cond_10

    if-eqz v0, :cond_e

    move v2, v3

    :goto_d
    return v2

    :cond_e
    move v2, v4

    goto :goto_d

    :cond_10
    const/4 v1, 0x0

    :goto_11
    if-ge v1, v0, :cond_25

    iget-object v2, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/UndoOperation;

    invoke-virtual {v2}, Landroid/content/UndoOperation;->getOwner()Landroid/content/UndoOwner;

    move-result-object v2

    if-ne v2, p1, :cond_22

    return v3

    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_25
    return v4
.end method

.method makeExecuted()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/UndoManager$UndoState;->mExecuted:Z

    return-void
.end method

.method matchOwner(Landroid/content/UndoOwner;)Z
    .registers 5

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_9
    if-ltz v0, :cond_1e

    iget-object v1, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/UndoOperation;

    invoke-virtual {v1, p1}, Landroid/content/UndoOperation;->matchOwner(Landroid/content/UndoOwner;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const/4 v1, 0x1

    return v1

    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_1e
    return v2
.end method

.method redo()V
    .registers 4

    iget-object v2, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_17

    iget-object v2, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/UndoOperation;

    invoke-virtual {v2}, Landroid/content/UndoOperation;->redo()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_17
    return-void
.end method

.method setCanMerge(Z)Z
    .registers 3

    if-eqz p1, :cond_8

    iget-boolean v0, p0, Landroid/content/UndoManager$UndoState;->mExecuted:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    iput-boolean p1, p0, Landroid/content/UndoManager$UndoState;->mCanMerge:Z

    const/4 v0, 0x1

    return v0
.end method

.method setLabel(Ljava/lang/CharSequence;)V
    .registers 2

    iput-object p1, p0, Landroid/content/UndoManager$UndoState;->mLabel:Ljava/lang/CharSequence;

    return-void
.end method

.method undo()V
    .registers 3

    iget-object v1, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_8
    if-ltz v0, :cond_18

    iget-object v1, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/UndoOperation;

    invoke-virtual {v1}, Landroid/content/UndoOperation;->undo()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method updateLabel(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Landroid/content/UndoManager$UndoState;->mLabel:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    iput-object p1, p0, Landroid/content/UndoManager$UndoState;->mLabel:Ljava/lang/CharSequence;

    :cond_6
    return-void
.end method

.method writeToParcel(Landroid/os/Parcel;)V
    .registers 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v3, p0, Landroid/content/UndoManager$UndoState;->mRecent:Ljava/util/ArrayList;

    if-eqz v3, :cond_f

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Can\'t save state before committing"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_f
    iget v3, p0, Landroid/content/UndoManager$UndoState;->mCommitId:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v3, p0, Landroid/content/UndoManager$UndoState;->mCanMerge:Z

    if-eqz v3, :cond_49

    move v3, v4

    :goto_19
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v3, p0, Landroid/content/UndoManager$UndoState;->mExecuted:Z

    if-eqz v3, :cond_4b

    :goto_20
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v3, p0, Landroid/content/UndoManager$UndoState;->mLabel:Ljava/lang/CharSequence;

    invoke-static {v3, p1, v5}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    iget-object v3, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    :goto_32
    if-ge v1, v0, :cond_4d

    iget-object v3, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/UndoOperation;

    iget-object v3, p0, Landroid/content/UndoManager$UndoState;->mManager:Landroid/content/UndoManager;

    iget-object v4, v2, Landroid/content/UndoOperation;->mOwner:Landroid/content/UndoOwner;

    invoke-virtual {v3, v4, p1}, Landroid/content/UndoManager;->saveOwner(Landroid/content/UndoOwner;Landroid/os/Parcel;)V

    invoke-virtual {p1, v2, v5}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    :cond_49
    move v3, v5

    goto :goto_19

    :cond_4b
    move v4, v5

    goto :goto_20

    :cond_4d
    return-void
.end method
