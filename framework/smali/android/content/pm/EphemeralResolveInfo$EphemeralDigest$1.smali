.class final Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest$1;
.super Ljava/lang/Object;
.source "EphemeralResolveInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;
    .registers 3

    new-instance v0, Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;

    invoke-direct {v0, p1}, Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest$1;->createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;
    .registers 3

    new-array v0, p1, [Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest$1;->newArray(I)[Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;

    move-result-object v0

    return-object v0
.end method
