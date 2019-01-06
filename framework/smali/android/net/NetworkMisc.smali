.class public Landroid/net/NetworkMisc;
.super Ljava/lang/Object;
.source "NetworkMisc.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/NetworkMisc$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/NetworkMisc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public acceptUnvalidated:Z

.field public allowBypass:Z

.field public explicitlySelected:Z

.field public provisioningNotificationDisabled:Z

.field public subscriberId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/net/NetworkMisc$1;

    invoke-direct {v0}, Landroid/net/NetworkMisc$1;-><init>()V

    sput-object v0, Landroid/net/NetworkMisc;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/net/NetworkMisc;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_19

    iget-boolean v0, p1, Landroid/net/NetworkMisc;->allowBypass:Z

    iput-boolean v0, p0, Landroid/net/NetworkMisc;->allowBypass:Z

    iget-boolean v0, p1, Landroid/net/NetworkMisc;->explicitlySelected:Z

    iput-boolean v0, p0, Landroid/net/NetworkMisc;->explicitlySelected:Z

    iget-boolean v0, p1, Landroid/net/NetworkMisc;->acceptUnvalidated:Z

    iput-boolean v0, p0, Landroid/net/NetworkMisc;->acceptUnvalidated:Z

    iget-object v0, p1, Landroid/net/NetworkMisc;->subscriberId:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/NetworkMisc;->subscriberId:Ljava/lang/String;

    iget-boolean v0, p1, Landroid/net/NetworkMisc;->provisioningNotificationDisabled:Z

    iput-boolean v0, p0, Landroid/net/NetworkMisc;->provisioningNotificationDisabled:Z

    :cond_19
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Landroid/net/NetworkMisc;->allowBypass:Z

    if-eqz v0, :cond_27

    move v0, v1

    :goto_7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/net/NetworkMisc;->explicitlySelected:Z

    if-eqz v0, :cond_29

    move v0, v1

    :goto_f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/net/NetworkMisc;->acceptUnvalidated:Z

    if-eqz v0, :cond_2b

    move v0, v1

    :goto_17
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/NetworkMisc;->subscriberId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/net/NetworkMisc;->provisioningNotificationDisabled:Z

    if-eqz v0, :cond_2d

    :goto_23
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_27
    move v0, v2

    goto :goto_7

    :cond_29
    move v0, v2

    goto :goto_f

    :cond_2b
    move v0, v2

    goto :goto_17

    :cond_2d
    move v1, v2

    goto :goto_23
.end method
