.class Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;
.super Ljava/lang/Object;
.source "MiuiGxzwAnimManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Builder"
.end annotation


# instance fields
.field private backgroundFrame:I

.field private backgroundRes:I

.field private customerDrawBitmap:Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$CustomerDrawBitmap;

.field private frameInterval:I

.field private repeat:Z

.field private res:[I

.field private startPosition:I


# direct methods
.method static synthetic -wrap0(Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;I)Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;->setBackgroundFrame(I)Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;I)Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;->setBackgroundRes(I)Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$CustomerDrawBitmap;)Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;->setCustomerDrawBitmap(Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$CustomerDrawBitmap;)Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;Z)Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;->setRepeat(Z)Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;)Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;->build()Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;

    move-result-object v0

    return-object v0
.end method

.method private constructor <init>([I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;->repeat:Z

    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;->frameInterval:I

    iput v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;->backgroundRes:I

    iput v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;->backgroundFrame:I

    iput-object p1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;->res:[I

    return-void
.end method

.method synthetic constructor <init>([ILcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;-><init>([I)V

    return-void
.end method

.method private build()Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;
    .locals 9

    new-instance v0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;

    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;->res:[I

    iget v2, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;->startPosition:I

    iget-boolean v3, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;->repeat:Z

    iget v4, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;->frameInterval:I

    iget v5, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;->backgroundRes:I

    iget v6, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;->backgroundFrame:I

    iget-object v7, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;->customerDrawBitmap:Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$CustomerDrawBitmap;

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;-><init>([IIZIIILcom/android/keyguard/fod/MiuiGxzwFrameAnimation$CustomerDrawBitmap;Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;)V

    return-object v0
.end method

.method private setBackgroundFrame(I)Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;
    .locals 0

    iput p1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;->backgroundFrame:I

    return-object p0
.end method

.method private setBackgroundRes(I)Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;
    .locals 0

    iput p1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;->backgroundRes:I

    return-object p0
.end method

.method private setCustomerDrawBitmap(Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$CustomerDrawBitmap;)Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;->customerDrawBitmap:Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$CustomerDrawBitmap;

    return-object p0
.end method

.method private setRepeat(Z)Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;->repeat:Z

    return-object p0
.end method
