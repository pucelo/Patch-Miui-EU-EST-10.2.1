.class public Lcom/miui/enterprise/PhoneHelper;
.super Ljava/lang/Object;
.source "PhoneHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Enterprise"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkCallRestriction(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 7

    const/4 v4, 0x0

    invoke-static {p1}, Lmiui/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v3, "ep_call_restriction_mode"

    invoke-static {p0, v3, v4}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    packed-switch v1, :pswitch_data_32

    return v4

    :pswitch_10
    const-string/jumbo v3, "ep_call_black_list"

    invoke-static {p0, v3}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/enterprise/settings/EnterpriseSettings;->parseListSettings(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    return v3

    :pswitch_20
    const-string/jumbo v3, "ep_call_white_list"

    invoke-static {p0, v3}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/enterprise/settings/EnterpriseSettings;->parseListSettings(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    return v3

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_20
        :pswitch_10
    .end packed-switch
.end method

.method public static checkEntDataRestriction(Landroid/content/Context;Z)Z
    .registers 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    sget-boolean v1, Lcom/miui/enterprise/settings/EnterpriseSettings;->ENTERPRISE_ACTIVATED:Z

    if-nez v1, :cond_7

    return p1

    :cond_7
    const-string/jumbo v1, "ep_cellular_status"

    invoke-static {p0, v1, v2}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_11

    return p1

    :cond_11
    if-nez v0, :cond_14

    return v3

    :cond_14
    const/4 v1, 0x4

    if-ne v0, v1, :cond_18

    return v2

    :cond_18
    return p1
.end method

.method private static checkSMSRestriction(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 7

    const/4 v4, 0x0

    const-string/jumbo v3, "ep_sms_restriction_mode"

    invoke-static {p0, v3, v4}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    packed-switch v1, :pswitch_data_2e

    return v4

    :pswitch_c
    const-string/jumbo v3, "ep_sms_black_list"

    invoke-static {p0, v3}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/enterprise/settings/EnterpriseSettings;->parseListSettings(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    return v3

    :pswitch_1c
    const-string/jumbo v3, "ep_sms_white_list"

    invoke-static {p0, v3}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/enterprise/settings/EnterpriseSettings;->parseListSettings(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    return v3

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_c
    .end packed-switch
.end method

.method public static inCallRestricted(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 7

    const/4 v4, 0x1

    const/4 v2, 0x0

    sget-boolean v1, Lcom/miui/enterprise/settings/EnterpriseSettings;->ENTERPRISE_ACTIVATED:Z

    if-nez v1, :cond_7

    return v2

    :cond_7
    const-string/jumbo v1, "ep_phone_call_status"

    invoke-static {p0, v1, v2}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1c

    const-string/jumbo v1, "Enterprise"

    const-string/jumbo v2, "in call is restricted"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_1c
    invoke-static {p0, p1}, Lcom/miui/enterprise/PhoneHelper;->checkCallRestriction(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_44

    const-string/jumbo v1, "Enterprise"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "in call from number "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is restricted"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_44
    return v2
.end method

.method public static outgoingCallRestricted(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 8

    const/4 v5, 0x1

    const/4 v3, 0x0

    sget-boolean v2, Lcom/miui/enterprise/settings/EnterpriseSettings;->ENTERPRISE_ACTIVATED:Z

    if-nez v2, :cond_7

    return v3

    :cond_7
    invoke-static {p1, p0}, Lmiui/telephony/PhoneNumberUtils;->getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ep_phone_call_status"

    invoke-static {p0, v2, v3}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_20

    const-string/jumbo v2, "Enterprise"

    const-string/jumbo v3, "outgoing call is restricted"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_20
    invoke-static {p0, v1}, Lcom/miui/enterprise/PhoneHelper;->checkCallRestriction(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_41

    const-string/jumbo v2, "Enterprise"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "outgoing call is restricted for number "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_41
    return v3
.end method

.method public static smsReceiveRestricted(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 7

    const/4 v4, 0x1

    const/4 v2, 0x0

    sget-boolean v1, Lcom/miui/enterprise/settings/EnterpriseSettings;->ENTERPRISE_ACTIVATED:Z

    if-nez v1, :cond_7

    return v2

    :cond_7
    const-string/jumbo v1, "ep_sms_status"

    invoke-static {p0, v1, v2}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1c

    const-string/jumbo v1, "Enterprise"

    const-string/jumbo v2, "SMS receive blocked"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_1c
    invoke-static {p0, p1}, Lcom/miui/enterprise/PhoneHelper;->checkSMSRestriction(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_44

    const-string/jumbo v1, "Enterprise"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SMS from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " blocked"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_44
    return v2
.end method

.method public static smsSendRestricted(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 7

    const/4 v4, 0x1

    const/4 v2, 0x0

    sget-boolean v1, Lcom/miui/enterprise/settings/EnterpriseSettings;->ENTERPRISE_ACTIVATED:Z

    if-nez v1, :cond_7

    return v2

    :cond_7
    const-string/jumbo v1, "ep_sms_status"

    invoke-static {p0, v1, v2}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1c

    const-string/jumbo v1, "Enterprise"

    const-string/jumbo v2, "SMS send abort: enterprise restricted"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_1c
    invoke-static {p0, p1}, Lcom/miui/enterprise/PhoneHelper;->checkSMSRestriction(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_44

    const-string/jumbo v1, "Enterprise"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SMS send abort: address "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is restricted"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_44
    return v2
.end method
