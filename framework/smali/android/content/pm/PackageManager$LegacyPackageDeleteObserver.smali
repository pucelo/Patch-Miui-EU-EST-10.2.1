.class public Landroid/content/pm/PackageManager$LegacyPackageDeleteObserver;
.super Landroid/app/PackageDeleteObserver;
.source "PackageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LegacyPackageDeleteObserver"
.end annotation


# instance fields
.field private final mLegacy:Landroid/content/pm/IPackageDeleteObserver;


# direct methods
.method public constructor <init>(Landroid/content/pm/IPackageDeleteObserver;)V
    .registers 2

    invoke-direct {p0}, Landroid/app/PackageDeleteObserver;-><init>()V

    iput-object p1, p0, Landroid/content/pm/PackageManager$LegacyPackageDeleteObserver;->mLegacy:Landroid/content/pm/IPackageDeleteObserver;

    return-void
.end method


# virtual methods
.method public onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    .registers 6

    iget-object v1, p0, Landroid/content/pm/PackageManager$LegacyPackageDeleteObserver;->mLegacy:Landroid/content/pm/IPackageDeleteObserver;

    if-nez v1, :cond_5

    return-void

    :cond_5
    :try_start_5
    iget-object v1, p0, Landroid/content/pm/PackageManager$LegacyPackageDeleteObserver;->mLegacy:Landroid/content/pm/IPackageDeleteObserver;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageDeleteObserver;->packageDeleted(Ljava/lang/String;I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    :goto_a
    return-void

    :catch_b
    move-exception v0

    goto :goto_a
.end method
