.class Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;
.super Ljava/lang/Object;
.source "ScreenElementRoot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ScreenElementRoot$ExtraResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScaleMetrics"
.end annotation


# static fields
.field private static final synthetic -miui-maml-ScreenElementRoot$ExtraResource$MetricsTypeSwitchesValues:[I


# instance fields
.field final synthetic $SWITCH_TABLE$miui$maml$ScreenElementRoot$ExtraResource$MetricsType:[I

.field mDensity:I

.field mScale:F

.field mScreenWidth:I

.field mSizeType:I

.field final synthetic this$1:Lmiui/maml/ScreenElementRoot$ExtraResource;


# direct methods
.method private static synthetic -getmiui-maml-ScreenElementRoot$ExtraResource$MetricsTypeSwitchesValues()[I
    .registers 3

    sget-object v0, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->-miui-maml-ScreenElementRoot$ExtraResource$MetricsTypeSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->-miui-maml-ScreenElementRoot$ExtraResource$MetricsTypeSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;->values()[Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;->DEN:Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    invoke-virtual {v1}, Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_30

    :goto_17
    :try_start_17
    sget-object v1, Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;->SW:Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    invoke-virtual {v1}, Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_2e

    :goto_20
    :try_start_20
    sget-object v1, Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;->SW_DEN:Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    invoke-virtual {v1}, Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_2c

    :goto_29
    sput-object v0, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->-miui-maml-ScreenElementRoot$ExtraResource$MetricsTypeSwitchesValues:[I

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

.method public constructor <init>(Lmiui/maml/ScreenElementRoot$ExtraResource;)V
    .registers 3

    iput-object p1, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->this$1:Lmiui/maml/ScreenElementRoot$ExtraResource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScale:F

    return-void
.end method

.method public constructor <init>(Lmiui/maml/ScreenElementRoot$ExtraResource;Ljava/lang/String;Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;)V
    .registers 12

    const/4 v7, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    iput-object p1, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->this$1:Lmiui/maml/ScreenElementRoot$ExtraResource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScale:F

    :try_start_c
    const-string/jumbo v5, ":"

    invoke-virtual {p2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->-getmiui-maml-ScreenElementRoot$ExtraResource$MetricsTypeSwitchesValues()[I

    move-result-object v5

    invoke-virtual {p3}, Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_15c

    :cond_20
    :goto_20
    return-void

    :pswitch_21
    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mDensity:I

    iget v4, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mDensity:I

    invoke-static {v4}, Lmiui/maml/ResourceManager;->translateDensity(I)I

    move-result v4

    mul-int/lit16 v4, v4, 0x1e0

    div-int/lit16 v4, v4, 0xf0

    iput v4, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScreenWidth:I

    array-length v4, v1

    if-le v4, v3, :cond_20

    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    iput v3, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScale:F
    :try_end_42
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_42} :catch_43

    goto :goto_20

    :catch_43
    move-exception v0

    const-string/jumbo v3, "ScreenElementRoot"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "format error of string: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "invalid format"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_67
    const/4 v4, 0x0

    :try_start_68
    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScreenWidth:I

    iget v4, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScreenWidth:I

    mul-int/lit16 v4, v4, 0xf0

    div-int/lit16 v4, v4, 0x1e0

    invoke-static {v4}, Lmiui/maml/ResourceManager;->retranslateDensity(I)I

    move-result v4

    iput v4, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mDensity:I

    array-length v4, v1

    if-le v4, v3, :cond_20

    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    iput v3, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScale:F

    goto :goto_20

    :pswitch_89
    const/4 v5, 0x0

    aget-object v5, v1, v5

    const-string/jumbo v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    iput v5, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mSizeType:I

    array-length v5, v2

    if-ne v5, v3, :cond_113

    const/4 v5, 0x0

    aget-object v5, v2, v5

    const-string/jumbo v6, "sw"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d2

    const/4 v5, 0x0

    aget-object v5, v2, v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScreenWidth:I

    iget v5, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScreenWidth:I

    mul-int/lit16 v5, v5, 0xf0

    div-int/lit16 v5, v5, 0x1e0

    invoke-static {v5}, Lmiui/maml/ResourceManager;->retranslateDensity(I)I

    move-result v5

    iput v5, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mDensity:I

    :cond_bf
    :goto_bf
    array-length v5, v1

    if-le v5, v3, :cond_cd

    array-length v5, v1

    if-ne v5, v4, :cond_159

    :goto_c5
    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    iput v3, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScale:F

    :cond_cd
    invoke-virtual {p0, v1}, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->onParseInfo([Ljava/lang/String;)V

    goto/16 :goto_20

    :cond_d2
    const/4 v5, 0x0

    aget-object v5, v2, v5

    const-string/jumbo v6, "den"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f9

    const/4 v5, 0x0

    aget-object v5, v2, v5

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mDensity:I

    iget v5, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mDensity:I

    invoke-static {v5}, Lmiui/maml/ResourceManager;->translateDensity(I)I

    move-result v5

    mul-int/lit16 v5, v5, 0x1e0

    div-int/lit16 v5, v5, 0xf0

    iput v5, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScreenWidth:I

    goto :goto_bf

    :cond_f9
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "invalid format: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_113
    array-length v5, v2

    if-lt v5, v4, :cond_13f

    const/4 v5, 0x0

    aget-object v5, v2, v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScreenWidth:I

    const/4 v5, 0x1

    aget-object v5, v2, v5

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mDensity:I

    array-length v5, v2

    if-ne v5, v7, :cond_bf

    const/4 v5, 0x2

    aget-object v5, v2, v5

    invoke-static {v5}, Lmiui/maml/ScreenElementRoot$ExtraResource;->-wrap0(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mSizeType:I

    goto :goto_bf

    :cond_13f
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "invalid format: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_159
    .catch Ljava/lang/NumberFormatException; {:try_start_68 .. :try_end_159} :catch_43

    :cond_159
    move v3, v4

    goto/16 :goto_c5

    :pswitch_data_15c
    .packed-switch 0x1
        :pswitch_21
        :pswitch_67
        :pswitch_89
    .end packed-switch
.end method


# virtual methods
.method protected onParseInfo([Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ScaleMetrics sw:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScreenWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " den:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mDensity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " sizeType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mSizeType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " scale:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
