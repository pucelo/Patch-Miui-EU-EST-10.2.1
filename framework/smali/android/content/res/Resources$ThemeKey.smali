.class Landroid/content/res/Resources$ThemeKey;
.super Ljava/lang/Object;
.source "Resources.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/Resources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ThemeKey"
.end annotation


# instance fields
.field mCount:I

.field mForce:[Z

.field private mHashCode:I

.field mResId:[I


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/content/res/Resources$ThemeKey;->mHashCode:I

    return-void
.end method


# virtual methods
.method public append(IZ)V
    .registers 5

    const/4 v1, 0x4

    iget-object v0, p0, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    if-nez v0, :cond_9

    new-array v0, v1, [I

    iput-object v0, p0, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    :cond_9
    iget-object v0, p0, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    if-nez v0, :cond_11

    new-array v0, v1, [Z

    iput-object v0, p0, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    :cond_11
    iget-object v0, p0, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    iget v1, p0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    iget-object v0, p0, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    iget v1, p0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/GrowingArrayUtils;->append([ZIZ)[Z

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    iget v0, p0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    iget v0, p0, Landroid/content/res/Resources$ThemeKey;->mHashCode:I

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, p1

    mul-int/lit8 v1, v0, 0x1f

    if-eqz p2, :cond_39

    const/4 v0, 0x1

    :goto_35
    add-int/2addr v0, v1

    iput v0, p0, Landroid/content/res/Resources$ThemeKey;->mHashCode:I

    return-void

    :cond_39
    const/4 v0, 0x0

    goto :goto_35
.end method

.method public clone()Landroid/content/res/Resources$ThemeKey;
    .registers 3

    new-instance v0, Landroid/content/res/Resources$ThemeKey;

    invoke-direct {v0}, Landroid/content/res/Resources$ThemeKey;-><init>()V

    iget-object v1, p0, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    iput-object v1, v0, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    iget-object v1, p0, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    iput-object v1, v0, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    iget v1, p0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    iput v1, v0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    iget v1, p0, Landroid/content/res/Resources$ThemeKey;->mHashCode:I

    iput v1, v0, Landroid/content/res/Resources$ThemeKey;->mHashCode:I

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/res/Resources$ThemeKey;->clone()Landroid/content/res/Resources$ThemeKey;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-ne p0, p1, :cond_5

    return v6

    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Landroid/content/res/Resources$ThemeKey;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_12

    :cond_11
    return v5

    :cond_12
    invoke-virtual {p0}, Landroid/content/res/Resources$ThemeKey;->hashCode()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    if-ne v3, v4, :cond_11

    move-object v2, p1

    check-cast v2, Landroid/content/res/Resources$ThemeKey;

    iget v3, p0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    iget v4, v2, Landroid/content/res/Resources$ThemeKey;->mCount:I

    if-eq v3, v4, :cond_26

    return v5

    :cond_26
    iget v0, p0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    const/4 v1, 0x0

    :goto_29
    if-ge v1, v0, :cond_43

    iget-object v3, p0, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    aget v3, v3, v1

    iget-object v4, v2, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    aget v4, v4, v1

    if-ne v3, v4, :cond_3f

    iget-object v3, p0, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    aget-boolean v3, v3, v1

    iget-object v4, v2, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    aget-boolean v4, v4, v1

    if-eq v3, v4, :cond_40

    :cond_3f
    return v5

    :cond_40
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    :cond_43
    return v6
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Landroid/content/res/Resources$ThemeKey;->mHashCode:I

    return v0
.end method

.method public setTo(Landroid/content/res/Resources$ThemeKey;)V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p1, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    if-nez v0, :cond_13

    move-object v0, v1

    :goto_6
    iput-object v0, p0, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    iget-object v0, p1, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    if-nez v0, :cond_1c

    :goto_c
    iput-object v1, p0, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    iget v0, p1, Landroid/content/res/Resources$ThemeKey;->mCount:I

    iput v0, p0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    return-void

    :cond_13
    iget-object v0, p1, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    goto :goto_6

    :cond_1c
    iget-object v0, p1, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    move-object v1, v0

    goto :goto_c
.end method
