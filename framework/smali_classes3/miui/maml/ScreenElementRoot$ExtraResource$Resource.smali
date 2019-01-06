.class Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;
.super Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;
.source "ScreenElementRoot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ScreenElementRoot$ExtraResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Resource"
.end annotation


# static fields
.field private static final synthetic -miui-maml-ScreenElementRoot$ExtraResource$MetricsTypeSwitchesValues:[I


# instance fields
.field final synthetic $SWITCH_TABLE$miui$maml$ScreenElementRoot$ExtraResource$MetricsType:[I

.field mPath:Ljava/lang/String;

.field final synthetic this$1:Lmiui/maml/ScreenElementRoot$ExtraResource;


# direct methods
.method private static synthetic -getmiui-maml-ScreenElementRoot$ExtraResource$MetricsTypeSwitchesValues()[I
    .registers 3

    sget-object v0, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;->-miui-maml-ScreenElementRoot$ExtraResource$MetricsTypeSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;->-miui-maml-ScreenElementRoot$ExtraResource$MetricsTypeSwitchesValues:[I

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
    sput-object v0, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;->-miui-maml-ScreenElementRoot$ExtraResource$MetricsTypeSwitchesValues:[I

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
    .registers 2

    iput-object p1, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;->this$1:Lmiui/maml/ScreenElementRoot$ExtraResource;

    invoke-direct {p0, p1}, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;-><init>(Lmiui/maml/ScreenElementRoot$ExtraResource;)V

    return-void
.end method

.method public constructor <init>(Lmiui/maml/ScreenElementRoot$ExtraResource;Ljava/lang/String;Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;)V
    .registers 6

    iput-object p1, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;->this$1:Lmiui/maml/ScreenElementRoot$ExtraResource;

    invoke-direct {p0, p1, p2, p3}, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;-><init>(Lmiui/maml/ScreenElementRoot$ExtraResource;Ljava/lang/String;Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;)V

    invoke-static {}, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;->-getmiui-maml-ScreenElementRoot$ExtraResource$MetricsTypeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p3}, Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_46

    :goto_12
    return-void

    :pswitch_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "den"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;->mDensity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;->mPath:Ljava/lang/String;

    goto :goto_12

    :pswitch_2c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sw"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;->mScreenWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;->mPath:Ljava/lang/String;

    goto :goto_12

    nop

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_13
        :pswitch_2c
    .end packed-switch
.end method


# virtual methods
.method protected onParseInfo([Ljava/lang/String;)V
    .registers 4

    array-length v0, p1

    const/4 v1, 0x2

    if-gt v0, v1, :cond_a

    const/4 v0, 0x0

    :goto_5
    aget-object v0, p1, v0

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;->mPath:Ljava/lang/String;

    return-void

    :cond_a
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " path:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
