.class public Landroid/content/res/MiuiTypedArray;
.super Landroid/content/res/TypedArray;
.source "MiuiTypedArray.java"


# instance fields
.field private mIsMiuiResources:Z


# direct methods
.method constructor <init>(Landroid/content/res/Resources;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/res/TypedArray;-><init>(Landroid/content/res/Resources;)V

    invoke-virtual {p0}, Landroid/content/res/MiuiTypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    instance-of v0, v0, Landroid/content/res/MiuiResources;

    iput-boolean v0, p0, Landroid/content/res/MiuiTypedArray;->mIsMiuiResources:Z

    return-void
.end method

.method private loadStringValueAt(I)Ljava/lang/CharSequence;
    .registers 8

    const/4 v5, 0x0

    iget-boolean v3, p0, Landroid/content/res/MiuiTypedArray;->mIsMiuiResources:Z

    if-nez v3, :cond_6

    return-object v5

    :cond_6
    iget-object v3, p0, Landroid/content/res/MiuiTypedArray;->mData:[I

    add-int/lit8 v4, p1, 0x0

    aget v2, v3, v4

    const/4 v3, 0x3

    if-ne v2, v3, :cond_22

    iget-object v3, p0, Landroid/content/res/MiuiTypedArray;->mData:[I

    add-int/lit8 v4, p1, 0x3

    aget v1, v3, v4

    invoke-virtual {p0}, Landroid/content/res/MiuiTypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    check-cast v3, Landroid/content/res/MiuiResources;

    invoke-virtual {v3, v1}, Landroid/content/res/MiuiResources;->getThemeString(I)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_22

    return-object v0

    :cond_22
    return-object v5
.end method


# virtual methods
.method public getString(I)Ljava/lang/String;
    .registers 4

    mul-int/lit8 v1, p1, 0x6

    invoke-direct {p0, v1}, Landroid/content/res/MiuiTypedArray;->loadStringValueAt(I)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_d
    invoke-super {p0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getText(I)Ljava/lang/CharSequence;
    .registers 4

    mul-int/lit8 v1, p1, 0x6

    invoke-direct {p0, v1}, Landroid/content/res/MiuiTypedArray;->loadStringValueAt(I)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_9

    return-object v0

    :cond_9
    invoke-super {p0, p1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method
