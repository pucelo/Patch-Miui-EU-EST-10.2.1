.class public Lcom/android/server/backup/params/ClearParams;
.super Ljava/lang/Object;
.source "ClearParams.java"


# instance fields
.field public packageInfo:Landroid/content/pm/PackageInfo;

.field public transport:Lcom/android/internal/backup/IBackupTransport;


# direct methods
.method public constructor <init>(Lcom/android/internal/backup/IBackupTransport;Landroid/content/pm/PackageInfo;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/params/ClearParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    iput-object p2, p0, Lcom/android/server/backup/params/ClearParams;->packageInfo:Landroid/content/pm/PackageInfo;

    return-void
.end method
