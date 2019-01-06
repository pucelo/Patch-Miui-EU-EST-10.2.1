.class public Landroid/os/WorkSource;
.super Ljava/lang/Object;
.source "WorkSource.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/WorkSource$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/WorkSource;",
            ">;"
        }
    .end annotation
.end field

.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "WorkSource"

.field static sGoneWork:Landroid/os/WorkSource;

.field static sNewbWork:Landroid/os/WorkSource;

.field static final sTmpWorkSource:Landroid/os/WorkSource;


# instance fields
.field mNames:[Ljava/lang/String;

.field mNum:I

.field mUids:[I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/os/WorkSource;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/WorkSource;-><init>(I)V

    sput-object v0, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    new-instance v0, Landroid/os/WorkSource$1;

    invoke-direct {v0}, Landroid/os/WorkSource$1;-><init>()V

    sput-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Landroid/os/WorkSource;->mNum:I

    const/4 v0, 0x2

    new-array v0, v0, [I

    aput p1, v0, v1

    aput v1, v0, v2

    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 8

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_12

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Name can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    iput v2, p0, Landroid/os/WorkSource;->mNum:I

    new-array v0, v3, [I

    aput p1, v0, v1

    aput v1, v0, v2

    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    new-array v0, v3, [Ljava/lang/String;

    aput-object p2, v0, v1

    aput-object v4, v0, v2

    iput-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/WorkSource;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_a

    const/4 v0, 0x0

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    return-void

    :cond_a
    iget v0, p1, Landroid/os/WorkSource;->mNum:I

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    iget-object v0, p1, Landroid/os/WorkSource;->mUids:[I

    if-eqz v0, :cond_2d

    iget-object v0, p1, Landroid/os/WorkSource;->mUids:[I

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    iget-object v0, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz v0, :cond_2b

    iget-object v0, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_28
    iput-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    :goto_2a
    return-void

    :cond_2b
    move-object v0, v1

    goto :goto_28

    :cond_2d
    iput-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    iput-object v1, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    goto :goto_2a
.end method

.method private static addWork(Landroid/os/WorkSource;I)Landroid/os/WorkSource;
    .registers 3

    if-nez p0, :cond_8

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(I)V

    return-object v0

    :cond_8
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    invoke-direct {p0, v0, p1}, Landroid/os/WorkSource;->insert(II)V

    return-object p0
.end method

.method private static addWork(Landroid/os/WorkSource;ILjava/lang/String;)Landroid/os/WorkSource;
    .registers 4

    if-nez p0, :cond_8

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1, p2}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_8
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    invoke-direct {p0, v0, p1, p2}, Landroid/os/WorkSource;->insert(IILjava/lang/String;)V

    return-object p0
.end method

.method private compare(Landroid/os/WorkSource;II)I
    .registers 7

    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    aget v1, v1, p2

    iget-object v2, p1, Landroid/os/WorkSource;->mUids:[I

    aget v2, v2, p3

    sub-int v0, v1, v2

    if-eqz v0, :cond_d

    return v0

    :cond_d
    iget-object v1, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    aget-object v1, v1, p2

    iget-object v2, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    aget-object v2, v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private insert(II)V
    .registers 8

    const/4 v3, 0x0

    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    if-nez v1, :cond_12

    const/4 v1, 0x4

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    aput p2, v1, v3

    const/4 v1, 0x1

    iput v1, p0, Landroid/os/WorkSource;->mNum:I

    :goto_11
    return-void

    :cond_12
    iget v1, p0, Landroid/os/WorkSource;->mNum:I

    iget-object v2, p0, Landroid/os/WorkSource;->mUids:[I

    array-length v2, v2

    if-lt v1, v2, :cond_43

    iget v1, p0, Landroid/os/WorkSource;->mNum:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    new-array v0, v1, [I

    if-lez p1, :cond_28

    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    invoke-static {v1, v3, v0, v3, p1}, Ljava/lang/System;->arraycopy([II[III)V

    :cond_28
    iget v1, p0, Landroid/os/WorkSource;->mNum:I

    if-ge p1, v1, :cond_36

    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Landroid/os/WorkSource;->mNum:I

    sub-int/2addr v3, p1

    invoke-static {v1, p1, v0, v2, v3}, Ljava/lang/System;->arraycopy([II[III)V

    :cond_36
    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    aput p2, v1, p1

    iget v1, p0, Landroid/os/WorkSource;->mNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/os/WorkSource;->mNum:I

    goto :goto_11

    :cond_43
    iget v1, p0, Landroid/os/WorkSource;->mNum:I

    if-ge p1, v1, :cond_53

    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    iget-object v2, p0, Landroid/os/WorkSource;->mUids:[I

    add-int/lit8 v3, p1, 0x1

    iget v4, p0, Landroid/os/WorkSource;->mNum:I

    sub-int/2addr v4, p1

    invoke-static {v1, p1, v2, v3, v4}, Ljava/lang/System;->arraycopy([II[III)V

    :cond_53
    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    aput p2, v1, p1

    iget v1, p0, Landroid/os/WorkSource;->mNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/os/WorkSource;->mNum:I

    goto :goto_11
.end method

.method private insert(IILjava/lang/String;)V
    .registers 10

    const/4 v3, 0x4

    const/4 v4, 0x0

    iget-object v2, p0, Landroid/os/WorkSource;->mUids:[I

    if-nez v2, :cond_1a

    new-array v2, v3, [I

    iput-object v2, p0, Landroid/os/WorkSource;->mUids:[I

    iget-object v2, p0, Landroid/os/WorkSource;->mUids:[I

    aput p2, v2, v4

    new-array v2, v3, [Ljava/lang/String;

    iput-object v2, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    iget-object v2, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    aput-object p3, v2, v4

    const/4 v2, 0x1

    iput v2, p0, Landroid/os/WorkSource;->mNum:I

    :goto_19
    return-void

    :cond_1a
    iget v2, p0, Landroid/os/WorkSource;->mNum:I

    iget-object v3, p0, Landroid/os/WorkSource;->mUids:[I

    array-length v3, v3

    if-lt v2, v3, :cond_68

    iget v2, p0, Landroid/os/WorkSource;->mNum:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    new-array v1, v2, [I

    iget v2, p0, Landroid/os/WorkSource;->mNum:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    new-array v0, v2, [Ljava/lang/String;

    if-lez p1, :cond_3d

    iget-object v2, p0, Landroid/os/WorkSource;->mUids:[I

    invoke-static {v2, v4, v1, v4, p1}, Ljava/lang/System;->arraycopy([II[III)V

    iget-object v2, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    invoke-static {v2, v4, v0, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3d
    iget v2, p0, Landroid/os/WorkSource;->mNum:I

    if-ge p1, v2, :cond_55

    iget-object v2, p0, Landroid/os/WorkSource;->mUids:[I

    add-int/lit8 v3, p1, 0x1

    iget v4, p0, Landroid/os/WorkSource;->mNum:I

    sub-int/2addr v4, p1

    invoke-static {v2, p1, v1, v3, v4}, Ljava/lang/System;->arraycopy([II[III)V

    iget-object v2, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    add-int/lit8 v3, p1, 0x1

    iget v4, p0, Landroid/os/WorkSource;->mNum:I

    sub-int/2addr v4, p1

    invoke-static {v2, p1, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_55
    iput-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    iput-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    iget-object v2, p0, Landroid/os/WorkSource;->mUids:[I

    aput p2, v2, p1

    iget-object v2, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    aput-object p3, v2, p1

    iget v2, p0, Landroid/os/WorkSource;->mNum:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/os/WorkSource;->mNum:I

    goto :goto_19

    :cond_68
    iget v2, p0, Landroid/os/WorkSource;->mNum:I

    if-ge p1, v2, :cond_84

    iget-object v2, p0, Landroid/os/WorkSource;->mUids:[I

    iget-object v3, p0, Landroid/os/WorkSource;->mUids:[I

    add-int/lit8 v4, p1, 0x1

    iget v5, p0, Landroid/os/WorkSource;->mNum:I

    sub-int/2addr v5, p1

    invoke-static {v2, p1, v3, v4, v5}, Ljava/lang/System;->arraycopy([II[III)V

    iget-object v2, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    iget-object v3, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    add-int/lit8 v4, p1, 0x1

    iget v5, p0, Landroid/os/WorkSource;->mNum:I

    sub-int/2addr v5, p1

    invoke-static {v2, p1, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_84
    iget-object v2, p0, Landroid/os/WorkSource;->mUids:[I

    aput p2, v2, p1

    iget-object v2, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    aput-object p3, v2, p1

    iget v2, p0, Landroid/os/WorkSource;->mNum:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/os/WorkSource;->mNum:I

    goto :goto_19
.end method

.method private removeUids(Landroid/os/WorkSource;)Z
    .registers 11

    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    iget-object v5, p0, Landroid/os/WorkSource;->mUids:[I

    iget v1, p1, Landroid/os/WorkSource;->mNum:I

    iget-object v6, p1, Landroid/os/WorkSource;->mUids:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_b
    if-ge v3, v0, :cond_30

    if-ge v4, v1, :cond_30

    aget v7, v6, v4

    aget v8, v5, v3

    if-ne v7, v8, :cond_24

    add-int/lit8 v0, v0, -0x1

    const/4 v2, 0x1

    if-ge v3, v0, :cond_21

    add-int/lit8 v7, v3, 0x1

    sub-int v8, v0, v3

    invoke-static {v5, v7, v5, v3, v8}, Ljava/lang/System;->arraycopy([II[III)V

    :cond_21
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_24
    aget v7, v6, v4

    aget v8, v5, v3

    if-le v7, v8, :cond_2d

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_2d
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_30
    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    return v2
.end method

.method private removeUidsAndNames(Landroid/os/WorkSource;)Z
    .registers 13

    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    iget-object v7, p0, Landroid/os/WorkSource;->mUids:[I

    iget-object v5, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    iget v1, p1, Landroid/os/WorkSource;->mNum:I

    iget-object v8, p1, Landroid/os/WorkSource;->mUids:[I

    iget-object v6, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_f
    if-ge v3, v0, :cond_55

    if-ge v4, v1, :cond_55

    aget v9, v8, v4

    aget v10, v7, v3

    if-ne v9, v10, :cond_39

    aget-object v9, v6, v4

    aget-object v10, v5, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_39

    add-int/lit8 v0, v0, -0x1

    const/4 v2, 0x1

    if-ge v3, v0, :cond_36

    add-int/lit8 v9, v3, 0x1

    sub-int v10, v0, v3

    invoke-static {v7, v9, v7, v3, v10}, Ljava/lang/System;->arraycopy([II[III)V

    add-int/lit8 v9, v3, 0x1

    sub-int v10, v0, v3

    invoke-static {v5, v9, v5, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_36
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_39
    aget v9, v8, v4

    aget v10, v7, v3

    if-gt v9, v10, :cond_4f

    aget v9, v8, v4

    aget v10, v7, v3

    if-ne v9, v10, :cond_52

    aget-object v9, v6, v4

    aget-object v10, v5, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-lez v9, :cond_52

    :cond_4f
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_52
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_55
    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    return v2
.end method

.method private updateLocked(Landroid/os/WorkSource;ZZ)Z
    .registers 7

    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-nez v0, :cond_d

    iget-object v0, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-nez v0, :cond_d

    invoke-direct {p0, p1, p2, p3}, Landroid/os/WorkSource;->updateUidsLocked(Landroid/os/WorkSource;ZZ)Z

    move-result v0

    return v0

    :cond_d
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    if-lez v0, :cond_41

    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-nez v0, :cond_41

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Other "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " has names, but target "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " does not"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_41
    iget v0, p1, Landroid/os/WorkSource;->mNum:I

    if-lez v0, :cond_75

    iget-object v0, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-nez v0, :cond_75

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Target "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " has names, but other "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " does not"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_75
    invoke-direct {p0, p1, p2, p3}, Landroid/os/WorkSource;->updateUidsAndNamesLocked(Landroid/os/WorkSource;ZZ)Z

    move-result v0

    return v0
.end method

.method private updateUidsAndNamesLocked(Landroid/os/WorkSource;ZZ)Z
    .registers 15

    iget v0, p1, Landroid/os/WorkSource;->mNum:I

    iget-object v7, p1, Landroid/os/WorkSource;->mUids:[I

    iget-object v5, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_9
    :goto_9
    iget v8, p0, Landroid/os/WorkSource;->mNum:I

    if-lt v3, v8, :cond_f

    if-ge v4, v0, :cond_8d

    :cond_f
    const/4 v2, -0x1

    iget v8, p0, Landroid/os/WorkSource;->mNum:I

    if-ge v3, v8, :cond_1c

    if-ge v4, v0, :cond_37

    invoke-direct {p0, p1, v3, v4}, Landroid/os/WorkSource;->compare(Landroid/os/WorkSource;II)I

    move-result v2

    if-lez v2, :cond_37

    :cond_1c
    const/4 v1, 0x1

    aget v8, v7, v4

    aget-object v9, v5, v4

    invoke-direct {p0, v3, v8, v9}, Landroid/os/WorkSource;->insert(IILjava/lang/String;)V

    if-eqz p3, :cond_32

    sget-object v8, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    aget v9, v7, v4

    aget-object v10, v5, v4

    invoke-static {v8, v9, v10}, Landroid/os/WorkSource;->addWork(Landroid/os/WorkSource;ILjava/lang/String;)Landroid/os/WorkSource;

    move-result-object v8

    sput-object v8, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    :cond_32
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_37
    if-nez p2, :cond_42

    if-ge v4, v0, :cond_3f

    if-nez v2, :cond_3f

    add-int/lit8 v4, v4, 0x1

    :cond_3f
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_42
    move v6, v3

    :goto_43
    if-gez v2, :cond_5b

    sget-object v8, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    iget-object v9, p0, Landroid/os/WorkSource;->mUids:[I

    aget v9, v9, v3

    iget-object v10, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-static {v8, v9, v10}, Landroid/os/WorkSource;->addWork(Landroid/os/WorkSource;ILjava/lang/String;)Landroid/os/WorkSource;

    move-result-object v8

    sput-object v8, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    add-int/lit8 v3, v3, 0x1

    iget v8, p0, Landroid/os/WorkSource;->mNum:I

    if-lt v3, v8, :cond_84

    :cond_5b
    if-ge v6, v3, :cond_79

    iget-object v8, p0, Landroid/os/WorkSource;->mUids:[I

    iget-object v9, p0, Landroid/os/WorkSource;->mUids:[I

    iget v10, p0, Landroid/os/WorkSource;->mNum:I

    sub-int/2addr v10, v3

    invoke-static {v8, v3, v9, v6, v10}, Ljava/lang/System;->arraycopy([II[III)V

    iget-object v8, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    iget-object v9, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    iget v10, p0, Landroid/os/WorkSource;->mNum:I

    sub-int/2addr v10, v3

    invoke-static {v8, v3, v9, v6, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v8, p0, Landroid/os/WorkSource;->mNum:I

    sub-int v9, v3, v6

    sub-int/2addr v8, v9

    iput v8, p0, Landroid/os/WorkSource;->mNum:I

    move v3, v6

    :cond_79
    iget v8, p0, Landroid/os/WorkSource;->mNum:I

    if-ge v3, v8, :cond_9

    if-nez v2, :cond_9

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_84
    if-ge v4, v0, :cond_8b

    invoke-direct {p0, p1, v3, v4}, Landroid/os/WorkSource;->compare(Landroid/os/WorkSource;II)I

    move-result v2

    goto :goto_43

    :cond_8b
    const/4 v2, -0x1

    goto :goto_43

    :cond_8d
    return v1
.end method

.method private updateUidsLocked(Landroid/os/WorkSource;ZZ)Z
    .registers 16

    const/4 v11, 0x0

    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    iget-object v7, p0, Landroid/os/WorkSource;->mUids:[I

    iget v1, p1, Landroid/os/WorkSource;->mNum:I

    iget-object v8, p1, Landroid/os/WorkSource;->mUids:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_c
    :goto_c
    if-lt v3, v0, :cond_10

    if-ge v4, v1, :cond_a5

    :cond_10
    if-ge v3, v0, :cond_1a

    if-ge v4, v1, :cond_63

    aget v9, v8, v4

    aget v10, v7, v3

    if-ge v9, v10, :cond_63

    :cond_1a
    const/4 v2, 0x1

    if-nez v7, :cond_37

    const/4 v9, 0x4

    new-array v7, v9, [I

    aget v9, v8, v4

    aput v9, v7, v11

    :goto_24
    if-eqz p3, :cond_30

    sget-object v9, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    aget v10, v8, v4

    invoke-static {v9, v10}, Landroid/os/WorkSource;->addWork(Landroid/os/WorkSource;I)Landroid/os/WorkSource;

    move-result-object v9

    sput-object v9, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    :cond_30
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_37
    array-length v9, v7

    if-lt v0, v9, :cond_55

    array-length v9, v7

    mul-int/lit8 v9, v9, 0x3

    div-int/lit8 v9, v9, 0x2

    new-array v5, v9, [I

    if-lez v3, :cond_46

    invoke-static {v7, v11, v5, v11, v3}, Ljava/lang/System;->arraycopy([II[III)V

    :cond_46
    if-ge v3, v0, :cond_4f

    add-int/lit8 v9, v3, 0x1

    sub-int v10, v0, v3

    invoke-static {v7, v3, v5, v9, v10}, Ljava/lang/System;->arraycopy([II[III)V

    :cond_4f
    move-object v7, v5

    aget v9, v8, v4

    aput v9, v5, v3

    goto :goto_24

    :cond_55
    if-ge v3, v0, :cond_5e

    add-int/lit8 v9, v3, 0x1

    sub-int v10, v0, v3

    invoke-static {v7, v3, v7, v9, v10}, Ljava/lang/System;->arraycopy([II[III)V

    :cond_5e
    aget v9, v8, v4

    aput v9, v7, v3

    goto :goto_24

    :cond_63
    if-nez p2, :cond_72

    if-ge v4, v1, :cond_6f

    aget v9, v8, v4

    aget v10, v7, v3

    if-ne v9, v10, :cond_6f

    add-int/lit8 v4, v4, 0x1

    :cond_6f
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_72
    move v6, v3

    :goto_73
    if-ge v3, v0, :cond_8a

    if-ge v4, v1, :cond_7d

    aget v9, v8, v4

    aget v10, v7, v3

    if-le v9, v10, :cond_8a

    :cond_7d
    sget-object v9, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    aget v10, v7, v3

    invoke-static {v9, v10}, Landroid/os/WorkSource;->addWork(Landroid/os/WorkSource;I)Landroid/os/WorkSource;

    move-result-object v9

    sput-object v9, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    add-int/lit8 v3, v3, 0x1

    goto :goto_73

    :cond_8a
    if-ge v6, v3, :cond_95

    sub-int v9, v0, v3

    invoke-static {v7, v3, v7, v6, v9}, Ljava/lang/System;->arraycopy([II[III)V

    sub-int v9, v3, v6

    sub-int/2addr v0, v9

    move v3, v6

    :cond_95
    if-ge v3, v0, :cond_c

    if-ge v4, v1, :cond_c

    aget v9, v8, v4

    aget v10, v7, v3

    if-ne v9, v10, :cond_c

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_c

    :cond_a5
    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    iput-object v7, p0, Landroid/os/WorkSource;->mUids:[I

    return v2
.end method


# virtual methods
.method public add(I)Z
    .registers 7

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v1, p0, Landroid/os/WorkSource;->mNum:I

    if-gtz v1, :cond_d

    iput-object v2, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    invoke-direct {p0, v3, p1}, Landroid/os/WorkSource;->insert(II)V

    return v4

    :cond_d
    iget-object v1, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz v1, :cond_2b

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Adding without name to named "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2b
    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    iget v2, p0, Landroid/os/WorkSource;->mNum:I

    invoke-static {v1, v3, v2, p1}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v0

    if-ltz v0, :cond_36

    return v3

    :cond_36
    neg-int v1, v0

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v1, p1}, Landroid/os/WorkSource;->insert(II)V

    return v4
.end method

.method public add(ILjava/lang/String;)Z
    .registers 8

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v2, p0, Landroid/os/WorkSource;->mNum:I

    if-gtz v2, :cond_a

    invoke-direct {p0, v3, p1, p2}, Landroid/os/WorkSource;->insert(IILjava/lang/String;)V

    return v4

    :cond_a
    iget-object v2, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-nez v2, :cond_28

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Adding name to unnamed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_28
    const/4 v1, 0x0

    :goto_29
    iget v2, p0, Landroid/os/WorkSource;->mNum:I

    if-ge v1, v2, :cond_33

    iget-object v2, p0, Landroid/os/WorkSource;->mUids:[I

    aget v2, v2, v1

    if-le v2, p1, :cond_37

    :cond_33
    invoke-direct {p0, v1, p1, p2}, Landroid/os/WorkSource;->insert(IILjava/lang/String;)V

    return v4

    :cond_37
    iget-object v2, p0, Landroid/os/WorkSource;->mUids:[I

    aget v2, v2, v1

    if-ne v2, p1, :cond_4a

    iget-object v2, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_33

    if-nez v0, :cond_4a

    return v3

    :cond_4a
    add-int/lit8 v1, v1, 0x1

    goto :goto_29
.end method

.method public add(Landroid/os/WorkSource;)Z
    .registers 5

    sget-object v0, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_5
    invoke-direct {p0, p1, v1, v2}, Landroid/os/WorkSource;->updateLocked(Landroid/os/WorkSource;ZZ)Z
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_b

    move-result v1

    monitor-exit v0

    return v1

    :catchall_b
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public addReturningNewbs(I)Landroid/os/WorkSource;
    .registers 6

    sget-object v1, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-object v0, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    sget-object v0, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    iget-object v0, v0, Landroid/os/WorkSource;->mUids:[I

    const/4 v2, 0x0

    aput p1, v0, v2

    sget-object v0, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v0, v2, v3}, Landroid/os/WorkSource;->updateLocked(Landroid/os/WorkSource;ZZ)Z

    sget-object v0, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_18

    monitor-exit v1

    return-object v0

    :catchall_18
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public addReturningNewbs(Landroid/os/WorkSource;)Landroid/os/WorkSource;
    .registers 5

    sget-object v1, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-object v0, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v2}, Landroid/os/WorkSource;->updateLocked(Landroid/os/WorkSource;ZZ)Z

    sget-object v0, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_f

    monitor-exit v1

    return-object v0

    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public clear()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    return-void
.end method

.method public clearNames()V
    .registers 7

    const/4 v4, 0x0

    iget-object v3, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz v3, :cond_2d

    iput-object v4, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    const/4 v0, 0x1

    iget v1, p0, Landroid/os/WorkSource;->mNum:I

    const/4 v2, 0x1

    :goto_b
    iget v3, p0, Landroid/os/WorkSource;->mNum:I

    if-ge v2, v3, :cond_2b

    iget-object v3, p0, Landroid/os/WorkSource;->mUids:[I

    aget v3, v3, v2

    iget-object v4, p0, Landroid/os/WorkSource;->mUids:[I

    add-int/lit8 v5, v2, -0x1

    aget v4, v4, v5

    if-ne v3, v4, :cond_20

    add-int/lit8 v1, v1, -0x1

    :goto_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_20
    iget-object v3, p0, Landroid/os/WorkSource;->mUids:[I

    iget-object v4, p0, Landroid/os/WorkSource;->mUids:[I

    aget v4, v4, v2

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_2b
    iput v1, p0, Landroid/os/WorkSource;->mNum:I

    :cond_2d
    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public diff(Landroid/os/WorkSource;)Z
    .registers 11

    const/4 v8, 0x1

    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    iget v6, p1, Landroid/os/WorkSource;->mNum:I

    if-eq v0, v6, :cond_8

    return v8

    :cond_8
    iget-object v4, p0, Landroid/os/WorkSource;->mUids:[I

    iget-object v5, p1, Landroid/os/WorkSource;->mUids:[I

    iget-object v2, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    iget-object v3, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    const/4 v1, 0x0

    :goto_11
    if-ge v1, v0, :cond_2e

    aget v6, v4, v1

    aget v7, v5, v1

    if-eq v6, v7, :cond_1a

    return v8

    :cond_1a
    if-eqz v2, :cond_2b

    if-eqz v3, :cond_2b

    aget-object v6, v2, v1

    aget-object v7, v3, v1

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_2b

    return v8

    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_2e
    const/4 v6, 0x0

    return v6
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Landroid/os/WorkSource;

    if-eqz v0, :cond_d

    check-cast p1, Landroid/os/WorkSource;

    invoke-virtual {p0, p1}, Landroid/os/WorkSource;->diff(Landroid/os/WorkSource;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public get(I)I
    .registers 3

    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    aget v0, v0, p1

    return v0
.end method

.method public getName(I)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz v1, :cond_9

    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    aget-object v0, v0, p1

    :cond_9
    return-object v0
.end method

.method public hashCode()I
    .registers 5

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_2
    iget v2, p0, Landroid/os/WorkSource;->mNum:I

    if-ge v0, v2, :cond_14

    shl-int/lit8 v2, v1, 0x4

    ushr-int/lit8 v3, v1, 0x1c

    or-int/2addr v2, v3

    iget-object v3, p0, Landroid/os/WorkSource;->mUids:[I

    aget v3, v3, v0

    xor-int v1, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_14
    iget-object v2, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz v2, :cond_2f

    const/4 v0, 0x0

    :goto_19
    iget v2, p0, Landroid/os/WorkSource;->mNum:I

    if-ge v0, v2, :cond_2f

    shl-int/lit8 v2, v1, 0x4

    ushr-int/lit8 v3, v1, 0x1c

    or-int/2addr v2, v3

    iget-object v3, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int v1, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_2f
    return v1
.end method

.method public remove(Landroid/os/WorkSource;)Z
    .registers 5

    const/4 v1, 0x0

    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    if-lez v0, :cond_9

    iget v0, p1, Landroid/os/WorkSource;->mNum:I

    if-gtz v0, :cond_a

    :cond_9
    return v1

    :cond_a
    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-nez v0, :cond_17

    iget-object v0, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-nez v0, :cond_17

    invoke-direct {p0, p1}, Landroid/os/WorkSource;->removeUids(Landroid/os/WorkSource;)Z

    move-result v0

    return v0

    :cond_17
    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-nez v0, :cond_47

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Other "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " has names, but target "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " does not"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_47
    iget-object v0, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-nez v0, :cond_77

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Target "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " has names, but other "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " does not"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_77
    invoke-direct {p0, p1}, Landroid/os/WorkSource;->removeUidsAndNames(Landroid/os/WorkSource;)Z

    move-result v0

    return v0
.end method

.method public set(I)V
    .registers 5

    const/4 v2, 0x0

    const/4 v0, 0x1

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    if-nez v0, :cond_d

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    :cond_d
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    iput-object v2, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    return-void
.end method

.method public set(ILjava/lang/String;)V
    .registers 6

    const/4 v2, 0x2

    const/4 v1, 0x0

    if-nez p2, :cond_d

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Name can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    const/4 v0, 0x1

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    if-nez v0, :cond_1c

    new-array v0, v2, [I

    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    :cond_1c
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    aput p1, v0, v1

    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    aput-object p2, v0, v1

    return-void
.end method

.method public set(Landroid/os/WorkSource;)V
    .registers 7

    const/4 v4, 0x0

    const/4 v3, 0x0

    if-nez p1, :cond_7

    iput v4, p0, Landroid/os/WorkSource;->mNum:I

    return-void

    :cond_7
    iget v0, p1, Landroid/os/WorkSource;->mNum:I

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    iget-object v0, p1, Landroid/os/WorkSource;->mUids:[I

    if-eqz v0, :cond_55

    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    if-eqz v0, :cond_3c

    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    array-length v0, v0

    iget v1, p0, Landroid/os/WorkSource;->mNum:I

    if-lt v0, v1, :cond_3c

    iget-object v0, p1, Landroid/os/WorkSource;->mUids:[I

    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    iget v2, p0, Landroid/os/WorkSource;->mNum:I

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy([II[III)V

    :goto_23
    iget-object v0, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz v0, :cond_52

    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz v0, :cond_47

    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    array-length v0, v0

    iget v1, p0, Landroid/os/WorkSource;->mNum:I

    if-lt v0, v1, :cond_47

    iget-object v0, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    iget-object v1, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    iget v2, p0, Landroid/os/WorkSource;->mNum:I

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_3b
    return-void

    :cond_3c
    iget-object v0, p1, Landroid/os/WorkSource;->mUids:[I

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    goto :goto_23

    :cond_47
    iget-object v0, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    goto :goto_3b

    :cond_52
    iput-object v3, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    goto :goto_3b

    :cond_55
    iput-object v3, p0, Landroid/os/WorkSource;->mUids:[I

    iput-object v3, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    goto :goto_3b
.end method

.method public setReturningDiffs(Landroid/os/WorkSource;)[Landroid/os/WorkSource;
    .registers 7

    const/4 v4, 0x0

    sget-object v2, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    monitor-enter v2

    const/4 v1, 0x0

    :try_start_5
    sput-object v1, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    const/4 v1, 0x0

    sput-object v1, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    const/4 v1, 0x1

    const/4 v3, 0x1

    invoke-direct {p0, p1, v1, v3}, Landroid/os/WorkSource;->updateLocked(Landroid/os/WorkSource;ZZ)Z

    sget-object v1, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    if-nez v1, :cond_17

    sget-object v1, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    if-eqz v1, :cond_26

    :cond_17
    const/4 v1, 0x2

    new-array v0, v1, [Landroid/os/WorkSource;

    sget-object v1, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    const/4 v3, 0x0

    aput-object v1, v0, v3

    sget-object v1, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    const/4 v3, 0x1

    aput-object v1, v0, v3
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_28

    monitor-exit v2

    return-object v0

    :cond_26
    monitor-exit v2

    return-object v4

    :catchall_28
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public size()I
    .registers 2

    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    return v0
.end method

.method public stripNames()Landroid/os/WorkSource;
    .registers 6

    iget v4, p0, Landroid/os/WorkSource;->mNum:I

    if-gtz v4, :cond_a

    new-instance v4, Landroid/os/WorkSource;

    invoke-direct {v4}, Landroid/os/WorkSource;-><init>()V

    return-object v4

    :cond_a
    new-instance v2, Landroid/os/WorkSource;

    invoke-direct {v2}, Landroid/os/WorkSource;-><init>()V

    const/4 v1, -0x1

    const/4 v0, 0x0

    :goto_11
    iget v4, p0, Landroid/os/WorkSource;->mNum:I

    if-ge v0, v4, :cond_24

    iget-object v4, p0, Landroid/os/WorkSource;->mUids:[I

    aget v3, v4, v0

    if-eqz v0, :cond_1e

    const/4 v4, -0x1

    if-eq v4, v3, :cond_21

    :cond_1e
    invoke-virtual {v2, v3}, Landroid/os/WorkSource;->add(I)Z

    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_24
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "WorkSource{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_c
    iget v2, p0, Landroid/os/WorkSource;->mNum:I

    if-ge v0, v2, :cond_33

    if-eqz v0, :cond_18

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_18
    iget-object v2, p0, Landroid/os/WorkSource;->mUids:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz v2, :cond_30

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_33
    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 12

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    const/4 v2, 0x0

    :goto_5
    iget v3, p0, Landroid/os/WorkSource;->mNum:I

    if-ge v2, v3, :cond_34

    const-wide v6, 0x21100000001L

    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    iget-object v3, p0, Landroid/os/WorkSource;->mUids:[I

    aget v3, v3, v2

    const-wide v6, 0x10300000001L

    invoke-virtual {p1, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v3, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz v3, :cond_2e

    iget-object v3, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    aget-object v3, v3, v2

    const-wide v6, 0x10e00000002L

    invoke-virtual {p1, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :cond_2e
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_34
    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method
