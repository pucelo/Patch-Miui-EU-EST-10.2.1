.class final Lmiui/contentcatcher/sdk/data/CatcherInfo$1;
.super Ljava/lang/Object;
.source "CatcherInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/contentcatcher/sdk/data/CatcherInfo;
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
        "Lmiui/contentcatcher/sdk/data/CatcherInfo;",
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
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lmiui/contentcatcher/sdk/data/CatcherInfo$1;->createFromParcel(Landroid/os/Parcel;)Lmiui/contentcatcher/sdk/data/CatcherInfo;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lmiui/contentcatcher/sdk/data/CatcherInfo;
    .registers 3

    new-instance v0, Lmiui/contentcatcher/sdk/data/CatcherInfo;

    invoke-direct {v0, p1}, Lmiui/contentcatcher/sdk/data/CatcherInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lmiui/contentcatcher/sdk/data/CatcherInfo$1;->newArray(I)[Lmiui/contentcatcher/sdk/data/CatcherInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lmiui/contentcatcher/sdk/data/CatcherInfo;
    .registers 3

    new-array v0, p1, [Lmiui/contentcatcher/sdk/data/CatcherInfo;

    return-object v0
.end method
