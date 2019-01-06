.class public Lmiui/theme/ThemeFileUtils;
.super Ljava/lang/Object;
.source "ThemeFileUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copy(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0, p1}, Landroid/miui/Shell;->copy(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static link(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1}, Landroid/miui/Shell;->link(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static mkdirs(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Landroid/miui/Shell;->mkdirs(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p0}, Lmiui/theme/ThemePermissionUtils;->updateFilePermissionWithThemeContext(Ljava/lang/String;)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static remove(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Landroid/miui/Shell;->remove(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static write(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1}, Landroid/miui/Shell;->write(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
