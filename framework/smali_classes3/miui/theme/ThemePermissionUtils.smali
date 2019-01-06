.class public Lmiui/theme/ThemePermissionUtils;
.super Ljava/lang/Object;
.source "ThemePermissionUtils.java"


# static fields
.field private static final THEME_FILE_CONTEXT:Ljava/lang/String; = "u:object_r:theme_data_file:s0"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static updateFilePermissionWithThemeContext(Ljava/lang/String;)Z
    .registers 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lmiui/theme/ThemePermissionUtils;->updateFilePermissionWithThemeContext(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static updateFilePermissionWithThemeContext(Ljava/lang/String;Z)Z
    .registers 10

    const/4 v7, 0x0

    if-nez p0, :cond_4

    return v7

    :cond_4
    const/4 v4, 0x0

    const/4 v2, -0x1

    const-string/jumbo v5, "/data/system/theme/"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_37

    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "/data/system/theme/"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x1fd

    :cond_19
    :goto_19
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v4, :cond_36

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_36

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_49

    :cond_36
    return v7

    :cond_37
    sget-object v5, Lmiui/content/res/ThemeResources;->THEME_MAGIC_PATH:Ljava/lang/String;

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_19

    new-instance v4, Ljava/io/File;

    sget-object v5, Lmiui/content/res/ThemeResources;->THEME_MAGIC_PATH:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x1fd

    goto :goto_19

    :cond_49
    const/4 v3, 0x0

    if-nez p1, :cond_7e

    :try_start_4c
    const-string/jumbo v5, "u:object_r:theme_data_file:s0"

    invoke-static {p0, v5}, Landroid/os/SELinux;->setFileContext(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7c

    const/4 v3, 0x0

    :goto_56
    const-string/jumbo v5, "Theme"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "system user update theme file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7b
    :goto_7b
    return v3

    :cond_7c
    const/4 v3, 0x0

    goto :goto_56

    :cond_7e
    const/16 v5, 0x2649

    const/16 v6, 0x2649

    invoke-static {p0, v5, v6}, Landroid/miui/Shell;->chown(Ljava/lang/String;II)Z

    move-result v3

    invoke-static {p0, v2}, Landroid/miui/Shell;->chmod(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_97

    :goto_8c
    const-string/jumbo v5, "u:object_r:theme_data_file:s0"

    invoke-static {p0, v5}, Landroid/miui/Shell;->setfilecon(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_92} :catch_99

    move-result v5

    if-nez v5, :cond_7b

    const/4 v3, 0x0

    goto :goto_7b

    :cond_97
    const/4 v3, 0x0

    goto :goto_8c

    :catch_99
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v5, "Theme"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "occur exception when updating theme file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7b
.end method
