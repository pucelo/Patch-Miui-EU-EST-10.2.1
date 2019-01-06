.class public final Landroid/service/autofill/Validators;
.super Ljava/lang/Object;
.source "Validators.java"


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "contains static methods only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs and([Landroid/service/autofill/Validator;)Landroid/service/autofill/Validator;
    .registers 3

    new-instance v0, Landroid/service/autofill/RequiredValidators;

    invoke-static {p0}, Landroid/service/autofill/Validators;->getInternalValidators([Landroid/service/autofill/Validator;)[Landroid/service/autofill/InternalValidator;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/service/autofill/RequiredValidators;-><init>([Landroid/service/autofill/InternalValidator;)V

    return-object v0
.end method

.method private static getInternalValidators([Landroid/service/autofill/Validator;)[Landroid/service/autofill/InternalValidator;
    .registers 6

    const-string/jumbo v2, "validators"

    invoke-static {p0, v2}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    array-length v2, p0

    new-array v1, v2, [Landroid/service/autofill/InternalValidator;

    const/4 v0, 0x0

    :goto_a
    array-length v2, p0

    if-ge v0, v2, :cond_3e

    aget-object v2, p0, v0

    instance-of v2, v2, Landroid/service/autofill/InternalValidator;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "element "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " not provided by Android System: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p0, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    aget-object v2, p0, v0

    check-cast v2, Landroid/service/autofill/InternalValidator;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_3e
    return-object v1
.end method

.method public static varargs or([Landroid/service/autofill/Validator;)Landroid/service/autofill/Validator;
    .registers 3

    new-instance v0, Landroid/service/autofill/OptionalValidators;

    invoke-static {p0}, Landroid/service/autofill/Validators;->getInternalValidators([Landroid/service/autofill/Validator;)[Landroid/service/autofill/InternalValidator;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/service/autofill/OptionalValidators;-><init>([Landroid/service/autofill/InternalValidator;)V

    return-object v0
.end method
