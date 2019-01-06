.class public Lcom/miui/server/enterprise/PhoneManagerService;
.super Lcom/miui/enterprise/IPhoneManager$Stub;
.source "PhoneManagerService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Enterprise-phone"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Lcom/miui/enterprise/IPhoneManager$Stub;-><init>()V

    iput-object p1, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    return-void
.end method

.method private shouldClose(I)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_7

    const/4 v2, 0x3

    if-ne p1, v2, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    move v0, v1

    goto :goto_7
.end method

.method private shouldOpen(I)Z
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_7

    const/4 v1, 0x4

    if-ne p1, v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method


# virtual methods
.method public controlCellular(II)V
    .registers 5

    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "ep_cellular_status"

    invoke-static {v0, v1, p1, p2}, Lcom/miui/enterprise/settings/EnterpriseSettings;->putInt(Landroid/content/Context;Ljava/lang/String;II)V

    invoke-direct {p0, p1}, Lcom/miui/server/enterprise/PhoneManagerService;->shouldOpen(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    :cond_1d
    invoke-direct {p0, p1}, Lcom/miui/server/enterprise/PhoneManagerService;->shouldClose(I)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    :cond_2d
    return-void
.end method

.method public controlPhoneCall(II)V
    .registers 5

    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "ep_phone_call_status"

    invoke-static {v0, v1, p1, p2}, Lcom/miui/enterprise/settings/EnterpriseSettings;->putInt(Landroid/content/Context;Ljava/lang/String;II)V

    return-void
.end method

.method public controlSMS(II)V
    .registers 5

    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "ep_sms_status"

    invoke-static {v0, v1, p1, p2}, Lcom/miui/enterprise/settings/EnterpriseSettings;->putInt(Landroid/content/Context;Ljava/lang/String;II)V

    return-void
.end method

.method public disableCallForward(Z)V
    .registers 5

    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "ep_disable_call_forward"

    if-eqz p1, :cond_11

    const/4 v0, 0x1

    :goto_d
    invoke-static {v1, v2, v0}, Lcom/miui/enterprise/settings/EnterpriseSettings;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void

    :cond_11
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public disableCallLog(Z)V
    .registers 5

    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "ep_disable_call_log"

    if-eqz p1, :cond_11

    const/4 v0, 0x1

    :goto_d
    invoke-static {v1, v2, v0}, Lcom/miui/enterprise/settings/EnterpriseSettings;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void

    :cond_11
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public endCall()V
    .registers 3

    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    const-string/jumbo v0, "Enterprise-phone"

    const-string/jumbo v1, "End current call"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lmiui/telephony/TelephonyManagerEx;->getDefault()Lmiui/telephony/TelephonyManagerEx;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/TelephonyManagerEx;->endCall()Z

    return-void
.end method

.method public getAreaCode(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    invoke-static {p1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getLocationAreaCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCallBlackList(I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "ep_call_black_list"

    invoke-static {v0, v1, p1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/enterprise/settings/EnterpriseSettings;->parseListSettings(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCallContactRestriction(I)I
    .registers 5

    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "ep_call_restriction_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getInt(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public getCallWhiteList(I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "ep_call_white_list"

    invoke-static {v0, v1, p1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/enterprise/settings/EnterpriseSettings;->parseListSettings(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCellularStatus(I)I
    .registers 5

    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "ep_cellular_status"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getInt(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public getIMEI(I)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/telephony/TelephonyManager;->getImeiForSlot(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMeid(I)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/telephony/TelephonyManager;->getMeidForSlot(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneCallStatus(I)I
    .registers 5

    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "ep_phone_call_status"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getInt(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public getSMSBlackList(I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "ep_sms_black_list"

    invoke-static {v0, v1, p1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/enterprise/settings/EnterpriseSettings;->parseListSettings(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSMSContactRestriction(I)I
    .registers 5

    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "ep_sms_restriction_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getInt(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public getSMSStatus(I)I
    .registers 5

    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "ep_sms_status"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getInt(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public getSMSWhiteList(I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "ep_sms_white_list"

    invoke-static {v0, v1, p1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/enterprise/settings/EnterpriseSettings;->parseListSettings(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isAutoRecordPhoneCall(I)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "ep_force_auto_call_record"

    invoke-static {v2, v3, v1, p1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getInt(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_13

    :goto_12
    return v0

    :cond_13
    move v0, v1

    goto :goto_12
.end method

.method public setCallBlackList(Ljava/util/List;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "ep_call_black_list"

    invoke-static {p1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->generateListSettings(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, p2}, Lcom/miui/enterprise/settings/EnterpriseSettings;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setCallContactRestriction(II)V
    .registers 5

    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "ep_call_restriction_mode"

    invoke-static {v0, v1, p1, p2}, Lcom/miui/enterprise/settings/EnterpriseSettings;->putInt(Landroid/content/Context;Ljava/lang/String;II)V

    return-void
.end method

.method public setCallWhiteList(Ljava/util/List;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "ep_call_white_list"

    invoke-static {p1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->generateListSettings(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, p2}, Lcom/miui/enterprise/settings/EnterpriseSettings;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setIccCardActivate(IZ)V
    .registers 4

    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lmiui/telephony/TelephonyManager;->setIccCardActivate(IZ)V

    return-void
.end method

.method public setPhoneCallAutoRecord(ZI)V
    .registers 6

    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "button_auto_record_call"

    invoke-static {v0, v1, p1, p2}, Landroid/provider/MiuiSettings$System;->putBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    iget-object v1, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "ep_force_auto_call_record"

    if-eqz p1, :cond_1d

    const/4 v0, 0x1

    :goto_19
    invoke-static {v1, v2, v0, p2}, Lcom/miui/enterprise/settings/EnterpriseSettings;->putInt(Landroid/content/Context;Ljava/lang/String;II)V

    return-void

    :cond_1d
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public setPhoneCallAutoRecordDir(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "ep_force_auto_call_record_dir"

    invoke-static {v0, v1, p1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSMSBlackList(Ljava/util/List;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "ep_sms_black_list"

    invoke-static {p1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->generateListSettings(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, p2}, Lcom/miui/enterprise/settings/EnterpriseSettings;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setSMSContactRestriction(II)V
    .registers 5

    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "ep_sms_restriction_mode"

    invoke-static {v0, v1, p1, p2}, Lcom/miui/enterprise/settings/EnterpriseSettings;->putInt(Landroid/content/Context;Ljava/lang/String;II)V

    return-void
.end method

.method public setSMSWhiteList(Ljava/util/List;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "ep_sms_white_list"

    invoke-static {p1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->generateListSettings(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, p2}, Lcom/miui/enterprise/settings/EnterpriseSettings;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
