.class public Lcom/miui/server/enterprise/ApplicationManagerServiceProxy;
.super Ljava/lang/Object;
.source "ApplicationManagerServiceProxy.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static installPackageAsUser(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;I)V
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/PackageManagerService;->installPackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;I)V

    return-void
.end method
