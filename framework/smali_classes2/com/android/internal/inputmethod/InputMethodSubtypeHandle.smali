.class public Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;
.super Ljava/lang/Object;
.source "InputMethodSubtypeHandle.java"


# instance fields
.field private final mInputMethodId:Ljava/lang/String;

.field private final mSubtypeId:I


# direct methods
.method public constructor <init>(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->mInputMethodId:Ljava/lang/String;

    if-eqz p2, :cond_12

    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->mSubtypeId:I

    :goto_11
    return-void

    :cond_12
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->mSubtypeId:I

    goto :goto_11
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->mInputMethodId:Ljava/lang/String;

    iput p2, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->mSubtypeId:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v1, 0x0

    if-eqz p1, :cond_9

    instance-of v2, p1, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_a

    :cond_9
    return v1

    :cond_a
    move-object v0, p1

    check-cast v0, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    iget-object v2, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->mInputMethodId:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->getInputMethodId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_22

    iget v2, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->mSubtypeId:I

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->getSubtypeId()I

    move-result v3

    if-ne v2, v3, :cond_22

    const/4 v1, 0x1

    :cond_22
    return v1
.end method

.method public getInputMethodId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->mInputMethodId:Ljava/lang/String;

    return-object v0
.end method

.method public getSubtypeId()I
    .registers 2

    iget v0, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->mSubtypeId:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->mInputMethodId:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->mSubtypeId:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "InputMethodSubtypeHandle{mInputMethodId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->mInputMethodId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mSubtypeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->mSubtypeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
