.class public Lcom/miui/enterprise/ApplicationHelper;
.super Ljava/lang/Object;
.source "ApplicationHelper.java"


# static fields
.field private static final ENTERPRISE_PACKAGE_PREFIX:Ljava/lang/String; = "pkg_"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allowAutoStart(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    sget-boolean v1, Lcom/miui/enterprise/settings/EnterpriseSettings;->ENTERPRISE_ACTIVATED:Z

    if-nez v1, :cond_6

    return v0

    :cond_6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    return v0

    :cond_d
    invoke-static {p0, p1}, Lcom/miui/enterprise/ApplicationHelper;->getPackageFlag(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_16

    const/4 v0, 0x1

    :cond_16
    return v0
.end method

.method public static allowAutoStart(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 5

    const/4 v0, 0x0

    sget-boolean v1, Lcom/miui/enterprise/settings/EnterpriseSettings;->ENTERPRISE_ACTIVATED:Z

    if-nez v1, :cond_6

    return v0

    :cond_6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    return v0

    :cond_d
    invoke-static {p0, p1, p2}, Lcom/miui/enterprise/ApplicationHelper;->getPackageFlag(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_16

    const/4 v0, 0x1

    :cond_16
    return v0
.end method

.method public static buildPackageSettingKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pkg_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static checkEnterprisePackageRestriction(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 7

    const/4 v4, 0x0

    const-string/jumbo v3, "ep_app_restriction_mode"

    invoke-static {p0, v3, v4}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    packed-switch v1, :pswitch_data_30

    return v4

    :pswitch_c
    return v4

    :pswitch_d
    const-string/jumbo v3, "ep_app_black_list"

    invoke-static {p0, v3}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/enterprise/settings/EnterpriseSettings;->parseListSettings(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    return v3

    :pswitch_1d
    const-string/jumbo v3, "ep_app_white_list"

    invoke-static {p0, v3}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/enterprise/settings/EnterpriseSettings;->parseListSettings(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    return v3

    nop

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_c
        :pswitch_1d
        :pswitch_d
    .end packed-switch
.end method

.method private static getPackageFlag(Landroid/content/Context;Ljava/lang/String;)I
    .registers 5

    invoke-static {p1}, Lcom/miui/enterprise/ApplicationHelper;->buildPackageSettingKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getUserId()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getInt(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private static getPackageFlag(Landroid/content/Context;Ljava/lang/String;I)I
    .registers 5

    const/4 v1, 0x0

    if-gez p2, :cond_4

    const/4 p2, 0x0

    :cond_4
    invoke-static {p1}, Lcom/miui/enterprise/ApplicationHelper;->buildPackageSettingKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1, p2}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getInt(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public static getTrustedAppStores(Landroid/content/Context;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "ep_trusted_app_stores"

    invoke-static {}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getUserId()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/enterprise/settings/EnterpriseSettings;->parseListSettings(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getTrustedAppStores(Landroid/content/Context;I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "ep_trusted_app_stores"

    invoke-static {p0, v0, p1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/enterprise/settings/EnterpriseSettings;->parseListSettings(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static isTrustedAppStoresEnabled(Landroid/content/Context;)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string/jumbo v2, "ep_trusted_app_store_enabled"

    invoke-static {}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getUserId()I

    move-result v3

    invoke-static {p0, v2, v1, v3}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getInt(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_10

    :goto_f
    return v0

    :cond_10
    move v0, v1

    goto :goto_f
.end method

.method public static isTrustedAppStoresEnabled(Landroid/content/Context;I)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string/jumbo v2, "ep_trusted_app_store_enabled"

    invoke-static {p0, v2, v1, p1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getInt(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_c

    :goto_b
    return v0

    :cond_c
    move v0, v1

    goto :goto_b
.end method

.method public static protectedFromDelete(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    sget-boolean v1, Lcom/miui/enterprise/settings/EnterpriseSettings;->ENTERPRISE_ACTIVATED:Z

    if-nez v1, :cond_6

    return v0

    :cond_6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    return v0

    :cond_d
    invoke-static {p0, p1}, Lcom/miui/enterprise/ApplicationHelper;->getPackageFlag(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_16

    const/4 v0, 0x1

    :cond_16
    return v0
.end method

.method public static protectedFromDelete(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 5

    const/4 v0, 0x0

    sget-boolean v1, Lcom/miui/enterprise/settings/EnterpriseSettings;->ENTERPRISE_ACTIVATED:Z

    if-nez v1, :cond_6

    return v0

    :cond_6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    return v0

    :cond_d
    invoke-static {p0, p1, p2}, Lcom/miui/enterprise/ApplicationHelper;->getPackageFlag(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_16

    const/4 v0, 0x1

    :cond_16
    return v0
.end method

.method public static shouldGrantPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    sget-boolean v1, Lcom/miui/enterprise/settings/EnterpriseSettings;->ENTERPRISE_ACTIVATED:Z

    if-nez v1, :cond_6

    return v0

    :cond_6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    return v0

    :cond_d
    invoke-static {p0, p1}, Lcom/miui/enterprise/ApplicationHelper;->getPackageFlag(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_16

    const/4 v0, 0x1

    :cond_16
    return v0
.end method

.method public static shouldGrantPermission(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 5

    const/4 v0, 0x0

    sget-boolean v1, Lcom/miui/enterprise/settings/EnterpriseSettings;->ENTERPRISE_ACTIVATED:Z

    if-nez v1, :cond_6

    return v0

    :cond_6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    return v0

    :cond_d
    invoke-static {p0, p1, p2}, Lcom/miui/enterprise/ApplicationHelper;->getPackageFlag(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_16

    const/4 v0, 0x1

    :cond_16
    return v0
.end method

.method public static shouldKeeAlive(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    sget-boolean v1, Lcom/miui/enterprise/settings/EnterpriseSettings;->ENTERPRISE_ACTIVATED:Z

    if-nez v1, :cond_6

    return v0

    :cond_6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    return v0

    :cond_d
    invoke-static {p0, p1}, Lcom/miui/enterprise/ApplicationHelper;->getPackageFlag(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_16

    const/4 v0, 0x1

    :cond_16
    return v0
.end method

.method public static shouldKeeAlive(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 5

    const/4 v0, 0x0

    sget-boolean v1, Lcom/miui/enterprise/settings/EnterpriseSettings;->ENTERPRISE_ACTIVATED:Z

    if-nez v1, :cond_6

    return v0

    :cond_6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    return v0

    :cond_d
    invoke-static {p0, p1, p2}, Lcom/miui/enterprise/ApplicationHelper;->getPackageFlag(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_16

    const/4 v0, 0x1

    :cond_16
    return v0
.end method
