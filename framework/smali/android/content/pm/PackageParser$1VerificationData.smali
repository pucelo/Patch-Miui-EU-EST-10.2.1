.class Landroid/content/pm/PackageParser$1VerificationData;
.super Ljava/lang/Object;
.source "PackageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;Ljava/io/File;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VerificationData"
.end annotation


# instance fields
.field public exception:Ljava/lang/Exception;

.field public exceptionFlag:I

.field public index:I

.field public objWaitAll:Ljava/lang/Object;

.field public shutDown:Z

.field public wait:Z


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
