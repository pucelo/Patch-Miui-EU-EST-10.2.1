.class public final Landroid/util/Rational;
.super Ljava/lang/Number;
.source "Rational.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/util/Rational;",
        ">;"
    }
.end annotation


# static fields
.field public static final NEGATIVE_INFINITY:Landroid/util/Rational;

.field public static final NaN:Landroid/util/Rational;

.field public static final POSITIVE_INFINITY:Landroid/util/Rational;

.field public static final ZERO:Landroid/util/Rational;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final mDenominator:I

.field private final mNumerator:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/util/Rational;

    invoke-direct {v0, v2, v2}, Landroid/util/Rational;-><init>(II)V

    sput-object v0, Landroid/util/Rational;->NaN:Landroid/util/Rational;

    new-instance v0, Landroid/util/Rational;

    invoke-direct {v0, v3, v2}, Landroid/util/Rational;-><init>(II)V

    sput-object v0, Landroid/util/Rational;->POSITIVE_INFINITY:Landroid/util/Rational;

    new-instance v0, Landroid/util/Rational;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v2}, Landroid/util/Rational;-><init>(II)V

    sput-object v0, Landroid/util/Rational;->NEGATIVE_INFINITY:Landroid/util/Rational;

    new-instance v0, Landroid/util/Rational;

    invoke-direct {v0, v2, v3}, Landroid/util/Rational;-><init>(II)V

    sput-object v0, Landroid/util/Rational;->ZERO:Landroid/util/Rational;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    if-gez p2, :cond_9

    neg-int p1, p1

    neg-int p2, p2

    :cond_9
    if-nez p2, :cond_12

    if-lez p1, :cond_12

    iput v1, p0, Landroid/util/Rational;->mNumerator:I

    iput v2, p0, Landroid/util/Rational;->mDenominator:I

    :goto_11
    return-void

    :cond_12
    if-nez p2, :cond_1c

    if-gez p1, :cond_1c

    const/4 v1, -0x1

    iput v1, p0, Landroid/util/Rational;->mNumerator:I

    iput v2, p0, Landroid/util/Rational;->mDenominator:I

    goto :goto_11

    :cond_1c
    if-nez p2, :cond_25

    if-nez p1, :cond_25

    iput v2, p0, Landroid/util/Rational;->mNumerator:I

    iput v2, p0, Landroid/util/Rational;->mDenominator:I

    goto :goto_11

    :cond_25
    if-nez p1, :cond_2c

    iput v2, p0, Landroid/util/Rational;->mNumerator:I

    iput v1, p0, Landroid/util/Rational;->mDenominator:I

    goto :goto_11

    :cond_2c
    invoke-static {p1, p2}, Landroid/util/Rational;->gcd(II)I

    move-result v0

    div-int v1, p1, v0

    iput v1, p0, Landroid/util/Rational;->mNumerator:I

    div-int v1, p2, v0

    iput v1, p0, Landroid/util/Rational;->mDenominator:I

    goto :goto_11
.end method

.method private equals(Landroid/util/Rational;)Z
    .registers 5

    const/4 v0, 0x0

    iget v1, p0, Landroid/util/Rational;->mNumerator:I

    iget v2, p1, Landroid/util/Rational;->mNumerator:I

    if-ne v1, v2, :cond_e

    iget v1, p0, Landroid/util/Rational;->mDenominator:I

    iget v2, p1, Landroid/util/Rational;->mDenominator:I

    if-ne v1, v2, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method public static gcd(II)I
    .registers 6

    move v0, p0

    move v1, p1

    :goto_2
    if-eqz v1, :cond_9

    move v2, v1

    rem-int v1, v0, v1

    move v0, v2

    goto :goto_2

    :cond_9
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    return v3
.end method

.method private static invalidRational(Ljava/lang/String;)Ljava/lang/NumberFormatException;
    .registers 4

    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid Rational: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private isNegInf()Z
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Landroid/util/Rational;->mDenominator:I

    if-nez v1, :cond_a

    iget v1, p0, Landroid/util/Rational;->mNumerator:I

    if-gez v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method private isPosInf()Z
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Landroid/util/Rational;->mDenominator:I

    if-nez v1, :cond_a

    iget v1, p0, Landroid/util/Rational;->mNumerator:I

    if-lez v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method public static parseRational(Ljava/lang/String;)Landroid/util/Rational;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const-string/jumbo v2, "string must not be null"

    invoke-static {p0, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "NaN"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    sget-object v2, Landroid/util/Rational;->NaN:Landroid/util/Rational;

    return-object v2

    :cond_12
    const-string/jumbo v2, "Infinity"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    sget-object v2, Landroid/util/Rational;->POSITIVE_INFINITY:Landroid/util/Rational;

    return-object v2

    :cond_1e
    const-string/jumbo v2, "-Infinity"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    sget-object v2, Landroid/util/Rational;->NEGATIVE_INFINITY:Landroid/util/Rational;

    return-object v2

    :cond_2a
    const/16 v2, 0x3a

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_38

    const/16 v2, 0x2f

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    :cond_38
    if-gez v1, :cond_3f

    invoke-static {p0}, Landroid/util/Rational;->invalidRational(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v2

    throw v2

    :cond_3f
    :try_start_3f
    new-instance v2, Landroid/util/Rational;

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/util/Rational;-><init>(II)V
    :try_end_57
    .catch Ljava/lang/NumberFormatException; {:try_start_3f .. :try_end_57} :catch_58

    return-object v2

    :catch_58
    move-exception v0

    invoke-static {p0}, Landroid/util/Rational;->invalidRational(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v2

    throw v2
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v2, 0x1

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    iget v0, p0, Landroid/util/Rational;->mNumerator:I

    if-nez v0, :cond_1a

    iget v0, p0, Landroid/util/Rational;->mDenominator:I

    if-eq v0, v2, :cond_10

    iget v0, p0, Landroid/util/Rational;->mDenominator:I

    if-nez v0, :cond_11

    :cond_10
    return-void

    :cond_11
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string/jumbo v1, "Rational must be deserialized from a reduced form for zero values"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    iget v0, p0, Landroid/util/Rational;->mDenominator:I

    if-nez v0, :cond_31

    iget v0, p0, Landroid/util/Rational;->mNumerator:I

    if-eq v0, v2, :cond_27

    iget v0, p0, Landroid/util/Rational;->mNumerator:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_28

    :cond_27
    return-void

    :cond_28
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string/jumbo v1, "Rational must be deserialized from a reduced form for infinity values"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_31
    iget v0, p0, Landroid/util/Rational;->mNumerator:I

    iget v1, p0, Landroid/util/Rational;->mDenominator:I

    invoke-static {v0, v1}, Landroid/util/Rational;->gcd(II)I

    move-result v0

    if-le v0, v2, :cond_44

    new-instance v0, Ljava/io/InvalidObjectException;

    const-string/jumbo v1, "Rational must be deserialized from a reduced form for finite values"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_44
    return-void
.end method


# virtual methods
.method public compareTo(Landroid/util/Rational;)I
    .registers 13

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, -0x1

    const-string/jumbo v4, "another must not be null"

    invoke-static {p1, v4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Landroid/util/Rational;->equals(Landroid/util/Rational;)Z

    move-result v4

    if-eqz v4, :cond_10

    return v10

    :cond_10
    invoke-virtual {p0}, Landroid/util/Rational;->isNaN()Z

    move-result v4

    if-eqz v4, :cond_17

    return v9

    :cond_17
    invoke-virtual {p1}, Landroid/util/Rational;->isNaN()Z

    move-result v4

    if-eqz v4, :cond_1e

    return v8

    :cond_1e
    invoke-direct {p0}, Landroid/util/Rational;->isPosInf()Z

    move-result v4

    if-nez v4, :cond_2a

    invoke-direct {p1}, Landroid/util/Rational;->isNegInf()Z

    move-result v4

    if-eqz v4, :cond_2b

    :cond_2a
    return v9

    :cond_2b
    invoke-direct {p0}, Landroid/util/Rational;->isNegInf()Z

    move-result v4

    if-nez v4, :cond_37

    invoke-direct {p1}, Landroid/util/Rational;->isPosInf()Z

    move-result v4

    if-eqz v4, :cond_38

    :cond_37
    return v8

    :cond_38
    iget v4, p0, Landroid/util/Rational;->mNumerator:I

    int-to-long v4, v4

    iget v6, p1, Landroid/util/Rational;->mDenominator:I

    int-to-long v6, v6

    mul-long v2, v4, v6

    iget v4, p1, Landroid/util/Rational;->mNumerator:I

    int-to-long v4, v4

    iget v6, p0, Landroid/util/Rational;->mDenominator:I

    int-to-long v6, v6

    mul-long v0, v4, v6

    cmp-long v4, v2, v0

    if-gez v4, :cond_4d

    return v8

    :cond_4d
    cmp-long v4, v2, v0

    if-lez v4, :cond_52

    return v9

    :cond_52
    return v10
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Landroid/util/Rational;

    invoke-virtual {p0, p1}, Landroid/util/Rational;->compareTo(Landroid/util/Rational;)I

    move-result v0

    return v0
.end method

.method public doubleValue()D
    .registers 7

    iget v4, p0, Landroid/util/Rational;->mNumerator:I

    int-to-double v2, v4

    iget v4, p0, Landroid/util/Rational;->mDenominator:I

    int-to-double v0, v4

    div-double v4, v2, v0

    return-wide v4
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Landroid/util/Rational;

    if-eqz v0, :cond_b

    check-cast p1, Landroid/util/Rational;

    invoke-direct {p0, p1}, Landroid/util/Rational;->equals(Landroid/util/Rational;)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public floatValue()F
    .registers 4

    iget v2, p0, Landroid/util/Rational;->mNumerator:I

    int-to-float v1, v2

    iget v2, p0, Landroid/util/Rational;->mDenominator:I

    int-to-float v0, v2

    div-float v2, v1, v0

    return v2
.end method

.method public getDenominator()I
    .registers 2

    iget v0, p0, Landroid/util/Rational;->mDenominator:I

    return v0
.end method

.method public getNumerator()I
    .registers 2

    iget v0, p0, Landroid/util/Rational;->mNumerator:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    iget v1, p0, Landroid/util/Rational;->mNumerator:I

    shl-int/lit8 v1, v1, 0x10

    iget v2, p0, Landroid/util/Rational;->mNumerator:I

    ushr-int/lit8 v2, v2, 0x10

    or-int v0, v1, v2

    iget v1, p0, Landroid/util/Rational;->mDenominator:I

    xor-int/2addr v1, v0

    return v1
.end method

.method public intValue()I
    .registers 3

    invoke-direct {p0}, Landroid/util/Rational;->isPosInf()Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x7fffffff

    return v0

    :cond_a
    invoke-direct {p0}, Landroid/util/Rational;->isNegInf()Z

    move-result v0

    if-eqz v0, :cond_13

    const/high16 v0, -0x80000000

    return v0

    :cond_13
    invoke-virtual {p0}, Landroid/util/Rational;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v0, 0x0

    return v0

    :cond_1b
    iget v0, p0, Landroid/util/Rational;->mNumerator:I

    iget v1, p0, Landroid/util/Rational;->mDenominator:I

    div-int/2addr v0, v1

    return v0
.end method

.method public isFinite()Z
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Landroid/util/Rational;->mDenominator:I

    if-eqz v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method public isInfinite()Z
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Landroid/util/Rational;->mNumerator:I

    if-eqz v1, :cond_a

    iget v1, p0, Landroid/util/Rational;->mDenominator:I

    if-nez v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method public isNaN()Z
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Landroid/util/Rational;->mDenominator:I

    if-nez v1, :cond_a

    iget v1, p0, Landroid/util/Rational;->mNumerator:I

    if-nez v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method public isZero()Z
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/util/Rational;->isFinite()Z

    move-result v1

    if-eqz v1, :cond_c

    iget v1, p0, Landroid/util/Rational;->mNumerator:I

    if-nez v1, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0
.end method

.method public longValue()J
    .registers 3

    invoke-direct {p0}, Landroid/util/Rational;->isPosInf()Z

    move-result v0

    if-eqz v0, :cond_c

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0

    :cond_c
    invoke-direct {p0}, Landroid/util/Rational;->isNegInf()Z

    move-result v0

    if-eqz v0, :cond_15

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    :cond_15
    invoke-virtual {p0}, Landroid/util/Rational;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_1e

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_1e
    iget v0, p0, Landroid/util/Rational;->mNumerator:I

    iget v1, p0, Landroid/util/Rational;->mDenominator:I

    div-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public shortValue()S
    .registers 2

    invoke-virtual {p0}, Landroid/util/Rational;->intValue()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public toFloat()F
    .registers 2

    invoke-virtual {p0}, Landroid/util/Rational;->floatValue()F

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Landroid/util/Rational;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string/jumbo v0, "NaN"

    return-object v0

    :cond_a
    invoke-direct {p0}, Landroid/util/Rational;->isPosInf()Z

    move-result v0

    if-eqz v0, :cond_14

    const-string/jumbo v0, "Infinity"

    return-object v0

    :cond_14
    invoke-direct {p0}, Landroid/util/Rational;->isNegInf()Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string/jumbo v0, "-Infinity"

    return-object v0

    :cond_1e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroid/util/Rational;->mNumerator:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/util/Rational;->mDenominator:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
