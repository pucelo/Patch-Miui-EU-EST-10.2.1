.class Landroid/app/backup/BackupHelperDispatcher$Header;
.super Ljava/lang/Object;
.source "BackupHelperDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/backup/BackupHelperDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Header"
.end annotation


# instance fields
.field chunkSize:I

.field keyPrefix:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/backup/BackupHelperDispatcher$Header;)V
    .registers 2

    invoke-direct {p0}, Landroid/app/backup/BackupHelperDispatcher$Header;-><init>()V

    return-void
.end method
