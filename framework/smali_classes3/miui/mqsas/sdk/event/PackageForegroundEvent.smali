.class public Lmiui/mqsas/sdk/event/PackageForegroundEvent;
.super Ljava/lang/Object;
.source "PackageForegroundEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/mqsas/sdk/event/PackageForegroundEvent$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lmiui/mqsas/sdk/event/PackageForegroundEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private componentName:Ljava/lang/String;

.field private foregroundTime:J

.field private identity:I

.field private isColdStart:Z

.field private packageName:Ljava/lang/String;

.field private pid:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lmiui/mqsas/sdk/event/PackageForegroundEvent$1;

    invoke-direct {v0}, Lmiui/mqsas/sdk/event/PackageForegroundEvent$1;-><init>()V

    sput-object v0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->packageName:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->componentName:Ljava/lang/String;

    iput v1, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->identity:I

    iput v1, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->pid:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->foregroundTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->isColdStart:Z

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 6

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->componentName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->identity:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->pid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->foregroundTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_2b

    :goto_28
    iput-boolean v0, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->isColdStart:Z

    return-void

    :cond_2b
    const/4 v0, 0x0

    goto :goto_28
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v1, 0x0

    if-nez p1, :cond_4

    return v1

    :cond_4
    move-object v0, p1

    check-cast v0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;

    iget-object v2, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->packageName:Ljava/lang/String;

    iget-object v3, v0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    iget-object v2, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->componentName:Ljava/lang/String;

    iget-object v3, v0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->componentName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    iget v2, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->identity:I

    iget v3, v0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->identity:I

    if-ne v2, v3, :cond_28

    iget v2, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->pid:I

    iget v3, v0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->pid:I

    if-ne v2, v3, :cond_28

    const/4 v1, 0x1

    :cond_28
    return v1
.end method

.method public getComponentName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->componentName:Ljava/lang/String;

    return-object v0
.end method

.method public getForegroundTime()J
    .registers 3

    iget-wide v0, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->foregroundTime:J

    return-wide v0
.end method

.method public getIdentity()I
    .registers 2

    iget v0, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->identity:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPid()I
    .registers 2

    iget v0, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->pid:I

    return v0
.end method

.method public isColdStart()Z
    .registers 2

    iget-boolean v0, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->isColdStart:Z

    return v0
.end method

.method public setColdStart(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->isColdStart:Z

    return-void
.end method

.method public setComponentName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->componentName:Ljava/lang/String;

    return-void
.end method

.method public setForegroundTime(J)V
    .registers 4

    iput-wide p1, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->foregroundTime:J

    return-void
.end method

.method public setIdentity(I)V
    .registers 2

    iput p1, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->identity:I

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setPid(I)V
    .registers 2

    iput p1, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->pid:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const/16 v2, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PackageForegroundEvent{packageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", componentName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->componentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", identity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->identity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", foregroundTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->foregroundTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isColdStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->isColdStart:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-object v0, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->componentName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->identity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->pid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->foregroundTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v0, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->isColdStart:Z

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    :goto_1e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_22
    const/4 v0, 0x0

    goto :goto_1e
.end method
