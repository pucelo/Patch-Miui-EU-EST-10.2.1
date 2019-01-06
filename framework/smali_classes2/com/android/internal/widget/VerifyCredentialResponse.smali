.class public final Lcom/android/internal/widget/VerifyCredentialResponse;
.super Ljava/lang/Object;
.source "VerifyCredentialResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/VerifyCredentialResponse$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/widget/VerifyCredentialResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

.field public static final OK:Lcom/android/internal/widget/VerifyCredentialResponse;

.field public static final RESPONSE_ERROR:I = -0x1

.field public static final RESPONSE_OK:I = 0x0

.field public static final RESPONSE_RETRY:I = 0x1

.field private static final TAG:Ljava/lang/String; = "VerifyCredentialResponse"


# instance fields
.field private mPayload:[B

.field private mResponseCode:I

.field private mTimeout:I


# direct methods
.method static synthetic -wrap0(Lcom/android/internal/widget/VerifyCredentialResponse;[B)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->setPayload([B)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/internal/widget/VerifyCredentialResponse;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->setTimeout(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-direct {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>()V

    sput-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    new-instance v0, Lcom/android/internal/widget/VerifyCredentialResponse;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(II[B)V

    sput-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    new-instance v0, Lcom/android/internal/widget/VerifyCredentialResponse$1;

    invoke-direct {v0}, Lcom/android/internal/widget/VerifyCredentialResponse$1;-><init>()V

    sput-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mResponseCode:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mPayload:[B

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mTimeout:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mResponseCode:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mPayload:[B

    return-void
.end method

.method private constructor <init>(II[B)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mResponseCode:I

    iput p2, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mTimeout:I

    iput-object p3, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mPayload:[B

    return-void
.end method

.method synthetic constructor <init>(II[BLcom/android/internal/widget/VerifyCredentialResponse;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(II[B)V

    return-void
.end method

.method public constructor <init>([B)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mPayload:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mResponseCode:I

    return-void
.end method

.method public static fromGateKeeperResponse(Landroid/service/gatekeeper/GateKeeperResponse;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 6

    invoke-virtual {p0}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_11

    new-instance v0, Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-virtual {p0}, Landroid/service/gatekeeper/GateKeeperResponse;->getTimeout()I

    move-result v3

    invoke-direct {v0, v3}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(I)V

    :goto_10
    return-object v0

    :cond_11
    if-nez v1, :cond_2b

    invoke-virtual {p0}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v2

    if-nez v2, :cond_25

    const-string/jumbo v3, "VerifyCredentialResponse"

    const-string/jumbo v4, "verifyChallenge response had no associated payload"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    goto :goto_10

    :cond_25
    new-instance v0, Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-direct {v0, v2}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>([B)V

    goto :goto_10

    :cond_2b
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    goto :goto_10
.end method

.method private setPayload([B)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mPayload:[B

    return-void
.end method

.method private setTimeout(I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mTimeout:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getPayload()[B
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mPayload:[B

    return-object v0
.end method

.method public getResponseCode()I
    .registers 2

    iget v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mResponseCode:I

    return v0
.end method

.method public getTimeout()I
    .registers 2

    iget v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mTimeout:I

    return v0
.end method

.method public stripPayload()Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 5

    new-instance v0, Lcom/android/internal/widget/VerifyCredentialResponse;

    iget v1, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mResponseCode:I

    iget v2, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mTimeout:I

    const/4 v3, 0x0

    new-array v3, v3, [B

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(II[B)V

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mResponseCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mResponseCode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    iget v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mTimeout:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :cond_10
    :goto_10
    return-void

    :cond_11
    iget v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mResponseCode:I

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mPayload:[B

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mPayload:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mPayload:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_10

    :cond_25
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_10
.end method
