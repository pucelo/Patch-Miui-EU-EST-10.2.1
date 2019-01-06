.class Lmiui/maml/data/Variables$ValueInfo;
.super Ljava/lang/Object;
.source "Variables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/Variables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ValueInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field mValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field mVersion:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/maml/data/Variables$ValueInfo;->mValue:Ljava/lang/Object;

    iput p2, p0, Lmiui/maml/data/Variables$ValueInfo;->mVersion:I

    return-void
.end method


# virtual methods
.method public reset()V
    .registers 9

    const/4 v6, 0x0

    iget-object v5, p0, Lmiui/maml/data/Variables$ValueInfo;->mValue:Ljava/lang/Object;

    instance-of v5, v5, [D

    if-eqz v5, :cond_16

    iget-object v1, p0, Lmiui/maml/data/Variables$ValueInfo;->mValue:Ljava/lang/Object;

    check-cast v1, [D

    const/4 v0, 0x0

    :goto_c
    array-length v5, v1

    if-ge v0, v5, :cond_54

    const-wide/16 v6, 0x0

    aput-wide v6, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_16
    iget-object v5, p0, Lmiui/maml/data/Variables$ValueInfo;->mValue:Ljava/lang/Object;

    instance-of v5, v5, [F

    if-eqz v5, :cond_2a

    iget-object v2, p0, Lmiui/maml/data/Variables$ValueInfo;->mValue:Ljava/lang/Object;

    check-cast v2, [F

    const/4 v0, 0x0

    :goto_21
    array-length v5, v2

    if-ge v0, v5, :cond_54

    const/4 v5, 0x0

    aput v5, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    :cond_2a
    iget-object v5, p0, Lmiui/maml/data/Variables$ValueInfo;->mValue:Ljava/lang/Object;

    instance-of v5, v5, [I

    if-eqz v5, :cond_3e

    iget-object v3, p0, Lmiui/maml/data/Variables$ValueInfo;->mValue:Ljava/lang/Object;

    check-cast v3, [I

    const/4 v0, 0x0

    :goto_35
    array-length v5, v3

    if-ge v0, v5, :cond_54

    const/4 v5, 0x0

    aput v5, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_35

    :cond_3e
    iget-object v5, p0, Lmiui/maml/data/Variables$ValueInfo;->mValue:Ljava/lang/Object;

    instance-of v5, v5, [Ljava/lang/Object;

    if-eqz v5, :cond_51

    iget-object v4, p0, Lmiui/maml/data/Variables$ValueInfo;->mValue:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_49
    array-length v5, v4

    if-ge v0, v5, :cond_54

    aput-object v6, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_49

    :cond_51
    invoke-virtual {p0, v6}, Lmiui/maml/data/Variables$ValueInfo;->setValue(Ljava/lang/Object;)V

    :cond_54
    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lmiui/maml/data/Variables$ValueInfo;->mValue:Ljava/lang/Object;

    iget v0, p0, Lmiui/maml/data/Variables$ValueInfo;->mVersion:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmiui/maml/data/Variables$ValueInfo;->mVersion:I

    return-void
.end method
