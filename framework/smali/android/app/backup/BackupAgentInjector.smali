.class Landroid/app/backup/BackupAgentInjector;
.super Ljava/lang/Object;
.source "BackupAgentInjector.java"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static shouldSkip(I)Z
    .registers 2

    invoke-static {p0}, Landroid/system/OsConstants;->S_ISREG(I)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {p0}, Landroid/system/OsConstants;->S_ISDIR(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method
