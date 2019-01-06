.class public final Landroid/service/autofill/LuhnChecksumValidator;
.super Landroid/service/autofill/InternalValidator;
.source "LuhnChecksumValidator.java"

# interfaces
.implements Landroid/service/autofill/Validator;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/autofill/LuhnChecksumValidator$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/service/autofill/LuhnChecksumValidator;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "LuhnChecksumValidator"


# instance fields
.field private final mIds:[Landroid/view/autofill/AutofillId;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/service/autofill/LuhnChecksumValidator$1;

    invoke-direct {v0}, Landroid/service/autofill/LuhnChecksumValidator$1;-><init>()V

    sput-object v0, Landroid/service/autofill/LuhnChecksumValidator;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public varargs constructor <init>([Landroid/view/autofill/AutofillId;)V
    .registers 3

    invoke-direct {p0}, Landroid/service/autofill/InternalValidator;-><init>()V

    const-string/jumbo v0, "ids"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/autofill/AutofillId;

    iput-object v0, p0, Landroid/service/autofill/LuhnChecksumValidator;->mIds:[Landroid/view/autofill/AutofillId;

    return-void
.end method

.method private static isLuhnChecksumValid(Ljava/lang/String;)Z
    .registers 9

    const/16 v7, 0x9

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    :goto_b
    if-ltz v2, :cond_28

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int/lit8 v1, v6, -0x30

    if-ltz v1, :cond_17

    if-le v1, v7, :cond_1a

    :cond_17
    :goto_17
    add-int/lit8 v2, v2, -0x1

    goto :goto_b

    :cond_1a
    if-eqz v3, :cond_26

    mul-int/lit8 v0, v1, 0x2

    if-le v0, v7, :cond_22

    add-int/lit8 v0, v0, -0x9

    :cond_22
    :goto_22
    add-int/2addr v4, v0

    xor-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_26
    move v0, v1

    goto :goto_22

    :cond_28
    rem-int/lit8 v6, v4, 0xa

    if-nez v6, :cond_2d

    const/4 v5, 0x1

    :cond_2d
    return v5
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isValid(Landroid/service/autofill/ValueFinder;)Z
    .registers 9

    const/4 v4, 0x0

    iget-object v3, p0, Landroid/service/autofill/LuhnChecksumValidator;->mIds:[Landroid/view/autofill/AutofillId;

    if-eqz v3, :cond_a

    iget-object v3, p0, Landroid/service/autofill/LuhnChecksumValidator;->mIds:[Landroid/view/autofill/AutofillId;

    array-length v3, v3

    if-nez v3, :cond_b

    :cond_a
    return v4

    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Landroid/service/autofill/LuhnChecksumValidator;->mIds:[Landroid/view/autofill/AutofillId;

    array-length v6, v5

    move v3, v4

    :goto_14
    if-ge v3, v6, :cond_43

    aget-object v0, v5, v3

    invoke-interface {p1, v0}, Landroid/service/autofill/ValueFinder;->findByAutofillId(Landroid/view/autofill/AutofillId;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3d

    sget-boolean v3, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v3, :cond_3c

    const-string/jumbo v3, "LuhnChecksumValidator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "No partial number for id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3c
    return v4

    :cond_3d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/service/autofill/LuhnChecksumValidator;->isLuhnChecksumValid(Ljava/lang/String;)Z

    move-result v3

    return v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/service/autofill/LuhnChecksumValidator;->mIds:[Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    return-void
.end method
