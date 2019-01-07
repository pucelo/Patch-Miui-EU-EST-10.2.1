.class public Landroid/widget/TextClockColor;
.super Landroid/widget/TextClock;
.source "TextClockColor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TextClockColor$1;
    }
.end annotation


# instance fields
.field private color:I

.field private key:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mTicker:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 13

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroid/widget/TextClockColor;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v4, v0

    const/4 v5, 0x0

    check-cast v5, Ljava/lang/String;

    iput-object v5, v4, Landroid/widget/TextClockColor;->key:Ljava/lang/String;

    move-object v4, v2

    if-eqz v4, :cond_1f

    move-object v4, v0

    move-object v5, v2

    const/4 v6, 0x0

    check-cast v6, Ljava/lang/String;

    const-string v7, "key"

    invoke-interface {v5, v6, v7}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/widget/TextClockColor;->key:Ljava/lang/String;

    :cond_1f
    move-object v4, v0

    new-instance v5, Landroid/os/Handler;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    iput-object v5, v4, Landroid/widget/TextClockColor;->mHandler:Landroid/os/Handler;

    move-object v4, v0

    new-instance v5, Landroid/widget/TextClockColor$1;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    move-object v8, v1

    invoke-direct {v6, v7, v8}, Landroid/widget/TextClockColor$1;-><init>(Landroid/widget/TextClockColor;Landroid/content/Context;)V

    iput-object v5, v4, Landroid/widget/TextClockColor;->mTicker:Ljava/lang/Runnable;

    move-object v4, v0

    iget-object v4, v4, Landroid/widget/TextClockColor;->mTicker:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method static synthetic access$L1000000(Landroid/widget/TextClockColor;)Ljava/lang/Runnable;
    .registers 5

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/widget/TextClockColor;->mTicker:Ljava/lang/Runnable;

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$L1000001(Landroid/widget/TextClockColor;)Landroid/os/Handler;
    .registers 5

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/widget/TextClockColor;->mHandler:Landroid/os/Handler;

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$L1000002(Landroid/widget/TextClockColor;)I
    .registers 5

    move-object v0, p0

    move-object v3, v0

    iget v3, v3, Landroid/widget/TextClockColor;->color:I

    move v0, v3

    return v0
.end method

.method static synthetic access$L1000003(Landroid/widget/TextClockColor;)Ljava/lang/String;
    .registers 5

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/widget/TextClockColor;->key:Ljava/lang/String;

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$S1000000(Landroid/widget/TextClockColor;Ljava/lang/Runnable;)V
    .registers 8

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroid/widget/TextClockColor;->mTicker:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$S1000001(Landroid/widget/TextClockColor;Landroid/os/Handler;)V
    .registers 8

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroid/widget/TextClockColor;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$S1000002(Landroid/widget/TextClockColor;I)V
    .registers 8

    move-object v0, p0

    move v1, p1

    move-object v4, v0

    move v5, v1

    iput v5, v4, Landroid/widget/TextClockColor;->color:I

    return-void
.end method

.method static synthetic access$S1000003(Landroid/widget/TextClockColor;Ljava/lang/String;)V
    .registers 8

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroid/widget/TextClockColor;->key:Ljava/lang/String;

    return-void
.end method
