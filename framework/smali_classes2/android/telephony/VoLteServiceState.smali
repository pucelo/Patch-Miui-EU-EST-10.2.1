.class public final Landroid/telephony/VoLteServiceState;
.super Ljava/lang/Object;
.source "VoLteServiceState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/VoLteServiceState$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/VoLteServiceState;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field public static final HANDOVER_CANCELED:I = 0x3

.field public static final HANDOVER_COMPLETED:I = 0x1

.field public static final HANDOVER_FAILED:I = 0x2

.field public static final HANDOVER_STARTED:I = 0x0

.field public static final INVALID:I = 0x7fffffff

.field private static final LOG_TAG:Ljava/lang/String; = "VoLteServiceState"

.field public static final NOT_SUPPORTED:I = 0x0

.field public static final SUPPORTED:I = 0x1


# instance fields
.field private mSrvccState:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/telephony/VoLteServiceState$1;

    invoke-direct {v0}, Landroid/telephony/VoLteServiceState$1;-><init>()V

    sput-object v0, Landroid/telephony/VoLteServiceState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Landroid/telephony/VoLteServiceState;->initialize()V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Landroid/telephony/VoLteServiceState;->initialize()V

    iput p1, p0, Landroid/telephony/VoLteServiceState;->mSrvccState:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/VoLteServiceState;->mSrvccState:I

    return-void
.end method

.method public constructor <init>(Landroid/telephony/VoLteServiceState;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Landroid/telephony/VoLteServiceState;->copyFrom(Landroid/telephony/VoLteServiceState;)V

    return-void
.end method

.method private initialize()V
    .registers 2

    const v0, 0x7fffffff

    iput v0, p0, Landroid/telephony/VoLteServiceState;->mSrvccState:I

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2

    const-string/jumbo v0, "VoLteServiceState"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static newFromBundle(Landroid/os/Bundle;)Landroid/telephony/VoLteServiceState;
    .registers 2

    new-instance v0, Landroid/telephony/VoLteServiceState;

    invoke-direct {v0}, Landroid/telephony/VoLteServiceState;-><init>()V

    invoke-direct {v0, p0}, Landroid/telephony/VoLteServiceState;->setFromNotifierBundle(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private setFromNotifierBundle(Landroid/os/Bundle;)V
    .registers 3

    const-string/jumbo v0, "mSrvccState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/VoLteServiceState;->mSrvccState:I

    return-void
.end method


# virtual methods
.method protected copyFrom(Landroid/telephony/VoLteServiceState;)V
    .registers 3

    iget v0, p1, Landroid/telephony/VoLteServiceState;->mSrvccState:I

    iput v0, p0, Landroid/telephony/VoLteServiceState;->mSrvccState:I

    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v3, 0x0

    :try_start_1
    move-object v0, p1

    check-cast v0, Landroid/telephony/VoLteServiceState;

    move-object v2, v0
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_5} :catch_8

    if-nez p1, :cond_a

    return v3

    :catch_8
    move-exception v1

    return v3

    :cond_a
    iget v4, p0, Landroid/telephony/VoLteServiceState;->mSrvccState:I

    iget v5, v2, Landroid/telephony/VoLteServiceState;->mSrvccState:I

    if-ne v4, v5, :cond_11

    const/4 v3, 0x1

    :cond_11
    return v3
.end method

.method public fillInNotifierBundle(Landroid/os/Bundle;)V
    .registers 4

    const-string/jumbo v0, "mSrvccState"

    iget v1, p0, Landroid/telephony/VoLteServiceState;->mSrvccState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public getSrvccState()I
    .registers 2

    iget v0, p0, Landroid/telephony/VoLteServiceState;->mSrvccState:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    const/16 v0, 0x1f

    iget v1, p0, Landroid/telephony/VoLteServiceState;->mSrvccState:I

    mul-int/lit8 v1, v1, 0x1f

    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "VoLteServiceState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/VoLteServiceState;->mSrvccState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validateInput()V
    .registers 1

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/telephony/VoLteServiceState;->mSrvccState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
