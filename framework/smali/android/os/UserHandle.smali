.class public final Landroid/os/UserHandle;
.super Ljava/lang/Object;
.source "UserHandle.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/UserHandle$1;
    }
.end annotation


# static fields
.field public static final AID_APP_END:I = 0x4e1f

.field public static final AID_APP_START:I = 0x2710

.field public static final AID_CACHE_GID_START:I = 0x4e20

.field public static final AID_ROOT:I = 0x0

.field public static final AID_SHARED_GID_START:I = 0xc350

.field public static final ALL:Landroid/os/UserHandle;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation
.end field

.field public static final CURRENT:Landroid/os/UserHandle;

.field public static final CURRENT_OR_SELF:Landroid/os/UserHandle;

.field public static final ERR_GID:I = -0x1

.field public static final MU_ENABLED:Z = true

.field public static final OWNER:Landroid/os/UserHandle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PER_USER_RANGE:I = 0x186a0

.field public static final SYSTEM:Landroid/os/UserHandle;

.field public static final USER_ALL:I = -0x1

.field public static final USER_CURRENT:I = -0x2

.field public static final USER_CURRENT_OR_SELF:I = -0x3

.field public static final USER_NULL:I = -0x2710

.field public static final USER_OWNER:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final USER_SERIAL_SYSTEM:I

.field public static final USER_SYSTEM:I


# instance fields
.field final mHandle:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    new-instance v0, Landroid/os/UserHandle;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    sput-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    new-instance v0, Landroid/os/UserHandle;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    sput-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    new-instance v0, Landroid/os/UserHandle;

    const/4 v1, -0x3

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    sput-object v0, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, v2}, Landroid/os/UserHandle;-><init>(I)V

    sput-object v0, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, v2}, Landroid/os/UserHandle;-><init>(I)V

    sput-object v0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    new-instance v0, Landroid/os/UserHandle$1;

    invoke-direct {v0}, Landroid/os/UserHandle$1;-><init>()V

    sput-object v0, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/os/UserHandle;->mHandle:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/UserHandle;->mHandle:I

    return-void
.end method

.method public static formatUid(I)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, p0}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatUid(Ljava/io/PrintWriter;I)V
    .registers 6

    const v3, 0x182b8

    const/16 v2, 0x2710

    if-ge p1, v2, :cond_b

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(I)V

    :goto_a
    return-void

    :cond_b
    const/16 v1, 0x75

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(C)V

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(I)V

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    if-lt v0, v3, :cond_2d

    const v1, 0x1869f

    if-gt v0, v1, :cond_2d

    const/16 v1, 0x69

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(C)V

    sub-int v1, v0, v3

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(I)V

    goto :goto_a

    :cond_2d
    if-lt v0, v2, :cond_3a

    const/16 v1, 0x61

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(C)V

    add-int/lit16 v1, v0, -0x2710

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(I)V

    goto :goto_a

    :cond_3a
    const/16 v1, 0x73

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    goto :goto_a
.end method

.method public static formatUid(Ljava/lang/StringBuilder;I)V
    .registers 6

    const v3, 0x182b8

    const/16 v2, 0x2710

    if-ge p1, v2, :cond_b

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_a
    return-void

    :cond_b
    const/16 v1, 0x75

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    if-lt v0, v3, :cond_2d

    const v1, 0x1869f

    if-gt v0, v1, :cond_2d

    const/16 v1, 0x69

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sub-int v1, v0, v3

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_2d
    if-lt v0, v2, :cond_3a

    const/16 v1, 0x61

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit16 v1, v0, -0x2710

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_3a
    const/16 v1, 0x73

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_a
.end method

.method public static getAppId(I)I
    .registers 2

    const v0, 0x186a0

    rem-int v0, p0, v0

    return v0
.end method

.method public static getAppIdFromSharedAppGid(I)I
    .registers 4

    const v2, 0xc350

    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    add-int/lit16 v1, v1, 0x2710

    sub-int v0, v1, v2

    if-ltz v0, :cond_f

    if-lt v0, v2, :cond_11

    :cond_f
    const/4 v1, -0x1

    return v1

    :cond_11
    return v0
.end method

.method public static getCacheAppGid(I)I
    .registers 3

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/UserHandle;->getCacheAppGid(II)I

    move-result v0

    return v0
.end method

.method public static getCacheAppGid(II)I
    .registers 3

    const/16 v0, 0x2710

    if-lt p1, v0, :cond_11

    const/16 v0, 0x4e1f

    if-gt p1, v0, :cond_11

    add-int/lit16 v0, p1, -0x2710

    add-int/lit16 v0, v0, 0x4e20

    invoke-static {p0, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    return v0

    :cond_11
    const/4 v0, -0x1

    return v0
.end method

.method public static getCallingAppId()I
    .registers 1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    return v0
.end method

.method public static getCallingUserId()I
    .registers 1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method

.method public static getSharedAppGid(I)I
    .registers 3

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/UserHandle;->getSharedAppGid(II)I

    move-result v0

    return v0
.end method

.method public static getSharedAppGid(II)I
    .registers 4

    const/16 v1, 0x2710

    if-lt p1, v1, :cond_f

    const/16 v0, 0x4e1f

    if-gt p1, v0, :cond_f

    add-int/lit16 v0, p1, -0x2710

    const v1, 0xc350

    add-int/2addr v0, v1

    return v0

    :cond_f
    if-ltz p1, :cond_14

    if-gt p1, v1, :cond_14

    return p1

    :cond_14
    const/4 v0, -0x1

    return v0
.end method

.method public static getUid(II)I
    .registers 4

    const v1, 0x186a0

    mul-int v0, p0, v1

    rem-int v1, p1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static getUserGid(I)I
    .registers 2

    const/16 v0, 0x270d

    invoke-static {p0, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    return v0
.end method

.method public static getUserHandleForUid(I)Landroid/os/UserHandle;
    .registers 2

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method public static getUserId(I)I
    .registers 2

    const v0, 0x186a0

    div-int v0, p0, v0

    return v0
.end method

.method public static isApp(I)Z
    .registers 4

    const/4 v1, 0x0

    if-lez p0, :cond_11

    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v2, 0x2710

    if-lt v0, v2, :cond_10

    const/16 v2, 0x4e1f

    if-gt v0, v2, :cond_10

    const/4 v1, 0x1

    :cond_10
    return v1

    :cond_11
    return v1
.end method

.method public static isCore(I)Z
    .registers 4

    const/4 v1, 0x0

    if-ltz p0, :cond_d

    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v2, 0x2710

    if-ge v0, v2, :cond_c

    const/4 v1, 0x1

    :cond_c
    return v1

    :cond_d
    return v1
.end method

.method public static isIsolated(I)Z
    .registers 4

    const/4 v1, 0x0

    if-lez p0, :cond_13

    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const v2, 0x182b8

    if-lt v0, v2, :cond_12

    const v2, 0x1869f

    if-gt v0, v2, :cond_12

    const/4 v1, 0x1

    :cond_12
    return v1

    :cond_13
    return v1
.end method

.method public static isSameApp(II)Z
    .registers 4

    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static isSameUser(II)Z
    .registers 4

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static myUserId()I
    .registers 1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method

.method public static of(I)Landroid/os/UserHandle;
    .registers 2

    if-nez p0, :cond_5

    sget-object v0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p0}, Landroid/os/UserHandle;-><init>(I)V

    goto :goto_4
.end method

.method public static parseUserArg(Ljava/lang/String;)I
    .registers 6

    const-string/jumbo v2, "all"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v1, -0x1

    :goto_a
    return v1

    :cond_b
    const-string/jumbo v2, "current"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    const-string/jumbo v2, "cur"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    :cond_1d
    const/4 v1, -0x2

    goto :goto_a

    :cond_1f
    :try_start_1f
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/lang/NumberFormatException; {:try_start_1f .. :try_end_22} :catch_24

    move-result v1

    goto :goto_a

    :catch_24
    move-exception v0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Bad user number: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static readFromParcel(Landroid/os/Parcel;)Landroid/os/UserHandle;
    .registers 3

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_e

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, v0}, Landroid/os/UserHandle;-><init>(I)V

    :goto_d
    return-object v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public static writeToParcel(Landroid/os/UserHandle;Landroid/os/Parcel;)V
    .registers 3

    if-eqz p0, :cond_7

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_6
    return-void

    :cond_7
    const/16 v0, -0x2710

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v3, 0x0

    if-eqz p1, :cond_10

    :try_start_3
    move-object v0, p1

    check-cast v0, Landroid/os/UserHandle;

    move-object v2, v0

    iget v4, p0, Landroid/os/UserHandle;->mHandle:I

    iget v5, v2, Landroid/os/UserHandle;->mHandle:I
    :try_end_b
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_b} :catch_f

    if-ne v4, v5, :cond_e

    const/4 v3, 0x1

    :cond_e
    return v3

    :catch_f
    move-exception v1

    :cond_10
    return v3
.end method

.method public getIdentifier()I
    .registers 2

    iget v0, p0, Landroid/os/UserHandle;->mHandle:I

    return v0
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Landroid/os/UserHandle;->mHandle:I

    return v0
.end method

.method public isOwner()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSystem()Z
    .registers 2

    sget-object v0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, v0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "UserHandle{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/UserHandle;->mHandle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/os/UserHandle;->mHandle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
