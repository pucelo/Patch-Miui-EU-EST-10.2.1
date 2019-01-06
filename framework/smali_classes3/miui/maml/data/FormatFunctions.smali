.class public Lmiui/maml/data/FormatFunctions;
.super Lmiui/maml/data/Expression$FunctionImpl;
.source "FormatFunctions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/data/FormatFunctions$Fun;
    }
.end annotation


# static fields
.field private static final synthetic -miui-maml-data-FormatFunctions$FunSwitchesValues:[I


# instance fields
.field private final mFun:Lmiui/maml/data/FormatFunctions$Fun;


# direct methods
.method private static synthetic -getmiui-maml-data-FormatFunctions$FunSwitchesValues()[I
    .registers 3

    sget-object v0, Lmiui/maml/data/FormatFunctions;->-miui-maml-data-FormatFunctions$FunSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lmiui/maml/data/FormatFunctions;->-miui-maml-data-FormatFunctions$FunSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Lmiui/maml/data/FormatFunctions$Fun;->values()[Lmiui/maml/data/FormatFunctions$Fun;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Lmiui/maml/data/FormatFunctions$Fun;->FORMAT_DATE:Lmiui/maml/data/FormatFunctions$Fun;

    invoke-virtual {v1}, Lmiui/maml/data/FormatFunctions$Fun;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_3b

    :goto_17
    :try_start_17
    sget-object v1, Lmiui/maml/data/FormatFunctions$Fun;->FORMAT_FLOAT:Lmiui/maml/data/FormatFunctions$Fun;

    invoke-virtual {v1}, Lmiui/maml/data/FormatFunctions$Fun;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_39

    :goto_20
    :try_start_20
    sget-object v1, Lmiui/maml/data/FormatFunctions$Fun;->FORMAT_INT:Lmiui/maml/data/FormatFunctions$Fun;

    invoke-virtual {v1}, Lmiui/maml/data/FormatFunctions$Fun;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_37

    :goto_29
    :try_start_29
    sget-object v1, Lmiui/maml/data/FormatFunctions$Fun;->INVALID:Lmiui/maml/data/FormatFunctions$Fun;

    invoke-virtual {v1}, Lmiui/maml/data/FormatFunctions$Fun;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_32} :catch_35

    :goto_32
    sput-object v0, Lmiui/maml/data/FormatFunctions;->-miui-maml-data-FormatFunctions$FunSwitchesValues:[I

    return-object v0

    :catch_35
    move-exception v1

    goto :goto_32

    :catch_37
    move-exception v1

    goto :goto_29

    :catch_39
    move-exception v1

    goto :goto_20

    :catch_3b
    move-exception v1

    goto :goto_17
.end method

.method private constructor <init>(Lmiui/maml/data/FormatFunctions$Fun;I)V
    .registers 3

    invoke-direct {p0, p2}, Lmiui/maml/data/Expression$FunctionImpl;-><init>(I)V

    iput-object p1, p0, Lmiui/maml/data/FormatFunctions;->mFun:Lmiui/maml/data/FormatFunctions$Fun;

    return-void
.end method

.method public static load()V
    .registers 4

    const/4 v3, 0x2

    const-string/jumbo v0, "formatDate"

    new-instance v1, Lmiui/maml/data/FormatFunctions;

    sget-object v2, Lmiui/maml/data/FormatFunctions$Fun;->FORMAT_DATE:Lmiui/maml/data/FormatFunctions$Fun;

    invoke-direct {v1, v2, v3}, Lmiui/maml/data/FormatFunctions;-><init>(Lmiui/maml/data/FormatFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    const-string/jumbo v0, "formatFloat"

    new-instance v1, Lmiui/maml/data/FormatFunctions;

    sget-object v2, Lmiui/maml/data/FormatFunctions$Fun;->FORMAT_FLOAT:Lmiui/maml/data/FormatFunctions$Fun;

    invoke-direct {v1, v2, v3}, Lmiui/maml/data/FormatFunctions;-><init>(Lmiui/maml/data/FormatFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    const-string/jumbo v0, "formatInt"

    new-instance v1, Lmiui/maml/data/FormatFunctions;

    sget-object v2, Lmiui/maml/data/FormatFunctions$Fun;->FORMAT_INT:Lmiui/maml/data/FormatFunctions$Fun;

    invoke-direct {v1, v2, v3}, Lmiui/maml/data/FormatFunctions;-><init>(Lmiui/maml/data/FormatFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    return-void
.end method


# virtual methods
.method public evaluate([Lmiui/maml/data/Expression;Lmiui/maml/data/Variables;)D
    .registers 5

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public evaluateStr([Lmiui/maml/data/Expression;Lmiui/maml/data/Variables;)Ljava/lang/String;
    .registers 10

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x1

    aget-object v2, p1, v2

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_c

    return-object v6

    :cond_c
    invoke-static {}, Lmiui/maml/data/FormatFunctions;->-getmiui-maml-data-FormatFunctions$FunSwitchesValues()[I

    move-result-object v2

    iget-object v3, p0, Lmiui/maml/data/FormatFunctions;->mFun:Lmiui/maml/data/FormatFunctions$Fun;

    invoke-virtual {v3}, Lmiui/maml/data/FormatFunctions$Fun;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_5a

    :goto_1b
    return-object v6

    :pswitch_1c
    aget-object v2, p1, v4

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    double-to-long v2, v2

    invoke-static {v1, v2, v3}, Lmiui/maml/data/DateTimeVariableUpdater;->formatDate(Ljava/lang/CharSequence;J)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :pswitch_28
    const/4 v2, 0x1

    :try_start_29
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x1

    aget-object v3, p1, v3

    invoke-virtual {v3}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_3c
    .catch Ljava/util/IllegalFormatException; {:try_start_29 .. :try_end_3c} :catch_57

    move-result-object v2

    return-object v2

    :pswitch_3e
    const/4 v2, 0x1

    :try_start_3f
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x1

    aget-object v3, p1, v3

    invoke-virtual {v3}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v4

    double-to-int v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_53
    .catch Ljava/util/IllegalFormatException; {:try_start_3f .. :try_end_53} :catch_55

    move-result-object v2

    return-object v2

    :catch_55
    move-exception v0

    goto :goto_1b

    :catch_57
    move-exception v0

    goto :goto_1b

    nop

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_28
        :pswitch_3e
    .end packed-switch
.end method
