.class final Lcom/miui/server/SplashPackageCheckInfo$1;
.super Ljava/lang/Object;
.source "SplashPackageCheckInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/SplashPackageCheckInfo;
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
        "Lcom/miui/server/SplashPackageCheckInfo;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/miui/server/SplashPackageCheckInfo;
    .registers 4

    new-instance v0, Lcom/miui/server/SplashPackageCheckInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/miui/server/SplashPackageCheckInfo;-><init>(Landroid/os/Parcel;Lcom/miui/server/SplashPackageCheckInfo;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/miui/server/SplashPackageCheckInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/miui/server/SplashPackageCheckInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/miui/server/SplashPackageCheckInfo;
    .registers 3

    new-array v0, p1, [Lcom/miui/server/SplashPackageCheckInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/miui/server/SplashPackageCheckInfo$1;->newArray(I)[Lcom/miui/server/SplashPackageCheckInfo;

    move-result-object v0

    return-object v0
.end method
