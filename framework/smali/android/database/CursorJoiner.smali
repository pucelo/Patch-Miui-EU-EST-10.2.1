.class public final Landroid/database/CursorJoiner;
.super Ljava/lang/Object;
.source "CursorJoiner.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/CursorJoiner$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Landroid/database/CursorJoiner$Result;",
        ">;",
        "Ljava/lang/Iterable",
        "<",
        "Landroid/database/CursorJoiner$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic -android-database-CursorJoiner$ResultSwitchesValues:[I

.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private mColumnsLeft:[I

.field private mColumnsRight:[I

.field private mCompareResult:Landroid/database/CursorJoiner$Result;

.field private mCompareResultIsValid:Z

.field private mCursorLeft:Landroid/database/Cursor;

.field private mCursorRight:Landroid/database/Cursor;

.field private mValues:[Ljava/lang/String;


# direct methods
.method private static synthetic -getandroid-database-CursorJoiner$ResultSwitchesValues()[I
    .registers 3

    sget-object v0, Landroid/database/CursorJoiner;->-android-database-CursorJoiner$ResultSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Landroid/database/CursorJoiner;->-android-database-CursorJoiner$ResultSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Landroid/database/CursorJoiner$Result;->values()[Landroid/database/CursorJoiner$Result;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Landroid/database/CursorJoiner$Result;->BOTH:Landroid/database/CursorJoiner$Result;

    invoke-virtual {v1}, Landroid/database/CursorJoiner$Result;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_30

    :goto_17
    :try_start_17
    sget-object v1, Landroid/database/CursorJoiner$Result;->LEFT:Landroid/database/CursorJoiner$Result;

    invoke-virtual {v1}, Landroid/database/CursorJoiner$Result;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_2e

    :goto_20
    :try_start_20
    sget-object v1, Landroid/database/CursorJoiner$Result;->RIGHT:Landroid/database/CursorJoiner$Result;

    invoke-virtual {v1}, Landroid/database/CursorJoiner$Result;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_2c

    :goto_29
    sput-object v0, Landroid/database/CursorJoiner;->-android-database-CursorJoiner$ResultSwitchesValues:[I

    return-object v0

    :catch_2c
    move-exception v1

    goto :goto_29

    :catch_2e
    move-exception v1

    goto :goto_20

    :catch_30
    move-exception v1

    goto :goto_17
.end method

.method static constructor <clinit>()V
    .registers 1

    const-class v0, Landroid/database/CursorJoiner;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Landroid/database/CursorJoiner;->-assertionsDisabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;[Ljava/lang/String;Landroid/database/Cursor;[Ljava/lang/String;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p2

    array-length v1, p4

    if-eq v0, v1, :cond_2e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "you must have the same number of columns on the left and right, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " != "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2e
    iput-object p1, p0, Landroid/database/CursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    iput-object p3, p0, Landroid/database/CursorJoiner;->mCursorRight:Landroid/database/Cursor;

    iget-object v0, p0, Landroid/database/CursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    iget-object v0, p0, Landroid/database/CursorJoiner;->mCursorRight:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/database/CursorJoiner;->mCompareResultIsValid:Z

    invoke-direct {p0, p1, p2}, Landroid/database/CursorJoiner;->buildColumnIndiciesArray(Landroid/database/Cursor;[Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/database/CursorJoiner;->mColumnsLeft:[I

    invoke-direct {p0, p3, p4}, Landroid/database/CursorJoiner;->buildColumnIndiciesArray(Landroid/database/Cursor;[Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/database/CursorJoiner;->mColumnsRight:[I

    iget-object v0, p0, Landroid/database/CursorJoiner;->mColumnsLeft:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/database/CursorJoiner;->mValues:[Ljava/lang/String;

    return-void
.end method

.method private buildColumnIndiciesArray(Landroid/database/Cursor;[Ljava/lang/String;)[I
    .registers 6

    array-length v2, p2

    new-array v0, v2, [I

    const/4 v1, 0x0

    :goto_4
    array-length v2, p2

    if-ge v1, v2, :cond_12

    aget-object v2, p2, v1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_12
    return-object v0
.end method

.method private static varargs compareStrings([Ljava/lang/String;)I
    .registers 8

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v6, 0x0

    array-length v4, p0

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_11

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "you must specify an even number of values"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_11
    const/4 v1, 0x0

    :goto_12
    array-length v4, p0

    if-ge v1, v4, :cond_3b

    aget-object v4, p0, v1

    if-nez v4, :cond_23

    add-int/lit8 v4, v1, 0x1

    aget-object v4, p0, v4

    if-nez v4, :cond_22

    :cond_1f
    add-int/lit8 v1, v1, 0x2

    goto :goto_12

    :cond_22
    return v2

    :cond_23
    add-int/lit8 v4, v1, 0x1

    aget-object v4, p0, v4

    if-nez v4, :cond_2a

    return v3

    :cond_2a
    aget-object v4, p0, v1

    add-int/lit8 v5, v1, 0x1

    aget-object v5, p0, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1f

    if-gez v0, :cond_39

    :goto_38
    return v2

    :cond_39
    move v2, v3

    goto :goto_38

    :cond_3b
    return v6
.end method

.method private incrementCursors()V
    .registers 3

    iget-boolean v0, p0, Landroid/database/CursorJoiner;->mCompareResultIsValid:Z

    if-eqz v0, :cond_16

    invoke-static {}, Landroid/database/CursorJoiner;->-getandroid-database-CursorJoiner$ResultSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Landroid/database/CursorJoiner;->mCompareResult:Landroid/database/CursorJoiner$Result;

    invoke-virtual {v1}, Landroid/database/CursorJoiner$Result;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2e

    :goto_13
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/database/CursorJoiner;->mCompareResultIsValid:Z

    :cond_16
    return-void

    :pswitch_17
    iget-object v0, p0, Landroid/database/CursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_13

    :pswitch_1d
    iget-object v0, p0, Landroid/database/CursorJoiner;->mCursorRight:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_13

    :pswitch_23
    iget-object v0, p0, Landroid/database/CursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    iget-object v0, p0, Landroid/database/CursorJoiner;->mCursorRight:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_13

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_23
        :pswitch_17
        :pswitch_1d
    .end packed-switch
.end method

.method private static populateValues([Ljava/lang/String;Landroid/database/Cursor;[II)V
    .registers 7

    sget-boolean v1, Landroid/database/CursorJoiner;->-assertionsDisabled:Z

    if-nez v1, :cond_f

    if-eqz p3, :cond_f

    const/4 v1, 0x1

    if-eq p3, v1, :cond_f

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_f
    const/4 v0, 0x0

    :goto_10
    array-length v1, p2

    if-ge v0, v1, :cond_21

    mul-int/lit8 v1, v0, 0x2

    add-int/2addr v1, p3

    aget v2, p2, v0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_21
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 4

    const/4 v0, 0x1

    iget-boolean v1, p0, Landroid/database/CursorJoiner;->mCompareResultIsValid:Z

    if-eqz v1, :cond_63

    invoke-static {}, Landroid/database/CursorJoiner;->-getandroid-database-CursorJoiner$ResultSwitchesValues()[I

    move-result-object v1

    iget-object v2, p0, Landroid/database/CursorJoiner;->mCompareResult:Landroid/database/CursorJoiner$Result;

    invoke-virtual {v2}, Landroid/database/CursorJoiner$Result;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_74

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bad value for mCompareResult, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/database/CursorJoiner;->mCompareResult:Landroid/database/CursorJoiner$Result;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_30
    iget-object v1, p0, Landroid/database/CursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isLast()Z

    move-result v1

    if-eqz v1, :cond_40

    iget-object v0, p0, Landroid/database/CursorJoiner;->mCursorRight:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isLast()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :cond_40
    return v0

    :pswitch_41
    iget-object v1, p0, Landroid/database/CursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isLast()Z

    move-result v1

    if-eqz v1, :cond_51

    iget-object v0, p0, Landroid/database/CursorJoiner;->mCursorRight:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :cond_51
    return v0

    :pswitch_52
    iget-object v1, p0, Landroid/database/CursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-eqz v1, :cond_62

    iget-object v0, p0, Landroid/database/CursorJoiner;->mCursorRight:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isLast()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :cond_62
    return v0

    :cond_63
    iget-object v1, p0, Landroid/database/CursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-eqz v1, :cond_73

    iget-object v0, p0, Landroid/database/CursorJoiner;->mCursorRight:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :cond_73
    return v0

    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_30
        :pswitch_41
        :pswitch_52
    .end packed-switch
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Landroid/database/CursorJoiner$Result;",
            ">;"
        }
    .end annotation

    return-object p0
.end method

.method public next()Landroid/database/CursorJoiner$Result;
    .registers 8

    const/4 v6, 0x1

    invoke-virtual {p0}, Landroid/database/CursorJoiner;->hasNext()Z

    move-result v2

    if-nez v2, :cond_10

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "you must only call next() when hasNext() is true"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_10
    invoke-direct {p0}, Landroid/database/CursorJoiner;->incrementCursors()V

    sget-boolean v2, Landroid/database/CursorJoiner;->-assertionsDisabled:Z

    if-nez v2, :cond_23

    invoke-virtual {p0}, Landroid/database/CursorJoiner;->hasNext()Z

    move-result v2

    if-nez v2, :cond_23

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_23
    iget-object v2, p0, Landroid/database/CursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    xor-int/lit8 v0, v2, 0x1

    iget-object v2, p0, Landroid/database/CursorJoiner;->mCursorRight:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    xor-int/lit8 v1, v2, 0x1

    if-eqz v0, :cond_67

    if-eqz v1, :cond_67

    iget-object v2, p0, Landroid/database/CursorJoiner;->mValues:[Ljava/lang/String;

    iget-object v3, p0, Landroid/database/CursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    iget-object v4, p0, Landroid/database/CursorJoiner;->mColumnsLeft:[I

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/database/CursorJoiner;->populateValues([Ljava/lang/String;Landroid/database/Cursor;[II)V

    iget-object v2, p0, Landroid/database/CursorJoiner;->mValues:[Ljava/lang/String;

    iget-object v3, p0, Landroid/database/CursorJoiner;->mCursorRight:Landroid/database/Cursor;

    iget-object v4, p0, Landroid/database/CursorJoiner;->mColumnsRight:[I

    invoke-static {v2, v3, v4, v6}, Landroid/database/CursorJoiner;->populateValues([Ljava/lang/String;Landroid/database/Cursor;[II)V

    iget-object v2, p0, Landroid/database/CursorJoiner;->mValues:[Ljava/lang/String;

    invoke-static {v2}, Landroid/database/CursorJoiner;->compareStrings([Ljava/lang/String;)I

    move-result v2

    packed-switch v2, :pswitch_data_80

    :goto_53
    iput-boolean v6, p0, Landroid/database/CursorJoiner;->mCompareResultIsValid:Z

    iget-object v2, p0, Landroid/database/CursorJoiner;->mCompareResult:Landroid/database/CursorJoiner$Result;

    return-object v2

    :pswitch_58
    sget-object v2, Landroid/database/CursorJoiner$Result;->LEFT:Landroid/database/CursorJoiner$Result;

    iput-object v2, p0, Landroid/database/CursorJoiner;->mCompareResult:Landroid/database/CursorJoiner$Result;

    goto :goto_53

    :pswitch_5d
    sget-object v2, Landroid/database/CursorJoiner$Result;->BOTH:Landroid/database/CursorJoiner$Result;

    iput-object v2, p0, Landroid/database/CursorJoiner;->mCompareResult:Landroid/database/CursorJoiner$Result;

    goto :goto_53

    :pswitch_62
    sget-object v2, Landroid/database/CursorJoiner$Result;->RIGHT:Landroid/database/CursorJoiner$Result;

    iput-object v2, p0, Landroid/database/CursorJoiner;->mCompareResult:Landroid/database/CursorJoiner$Result;

    goto :goto_53

    :cond_67
    if-eqz v0, :cond_6e

    sget-object v2, Landroid/database/CursorJoiner$Result;->LEFT:Landroid/database/CursorJoiner$Result;

    iput-object v2, p0, Landroid/database/CursorJoiner;->mCompareResult:Landroid/database/CursorJoiner$Result;

    goto :goto_53

    :cond_6e
    sget-boolean v2, Landroid/database/CursorJoiner;->-assertionsDisabled:Z

    if-nez v2, :cond_7a

    if-nez v1, :cond_7a

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_7a
    sget-object v2, Landroid/database/CursorJoiner$Result;->RIGHT:Landroid/database/CursorJoiner$Result;

    iput-object v2, p0, Landroid/database/CursorJoiner;->mCompareResult:Landroid/database/CursorJoiner$Result;

    goto :goto_53

    nop

    :pswitch_data_80
    .packed-switch -0x1
        :pswitch_58
        :pswitch_5d
        :pswitch_62
    .end packed-switch
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Landroid/database/CursorJoiner;->next()Landroid/database/CursorJoiner$Result;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
