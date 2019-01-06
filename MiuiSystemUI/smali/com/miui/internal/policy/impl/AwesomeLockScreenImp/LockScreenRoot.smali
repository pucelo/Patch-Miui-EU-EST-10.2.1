.class public Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;
.super Lmiui/maml/ScreenElementRoot;
.source "LockScreenRoot.java"

# interfaces
.implements Lmiui/maml/ScreenElementRoot$OnExternCommandListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$LockscreenCallback;
    }
.end annotation


# instance fields
.field private curCategory:Ljava/lang/String;

.field private mBatteryInfo:Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

.field private mBatteryLevel:Lmiui/maml/data/IndexedVariable;

.field private mBatteryState:Lmiui/maml/data/IndexedVariable;

.field private mBatteryType:Lmiui/maml/data/IndexedVariable;

.field private mFrameRateBatteryFull:F

.field private mFrameRateBatteryLow:F

.field private mFrameRateCharging:F

.field private mInit:Z

.field private mLockscreenCallback:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$LockscreenCallback;

.field private mNormalFrameRate:F


# direct methods
.method public constructor <init>(Lmiui/maml/ScreenContext;)V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0, p1}, Lmiui/maml/ScreenElementRoot;-><init>(Lmiui/maml/ScreenContext;)V

    new-instance v0, Lmiui/maml/data/IndexedVariable;

    const-string/jumbo v1, "battery_state"

    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2, v3}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mBatteryState:Lmiui/maml/data/IndexedVariable;

    new-instance v0, Lmiui/maml/data/IndexedVariable;

    const-string/jumbo v1, "battery_type"

    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2, v3}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mBatteryType:Lmiui/maml/data/IndexedVariable;

    new-instance v0, Lmiui/maml/data/IndexedVariable;

    const-string/jumbo v1, "battery_level"

    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2, v3}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mBatteryLevel:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {p0, p0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->setOnExternCommandListener(Lmiui/maml/ScreenElementRoot$OnExternCommandListener;)V

    const-string/jumbo v0, "BitmapProvider"

    new-instance v1, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockscreenBitmapProviderFactory;

    invoke-direct {v1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockscreenBitmapProviderFactory;-><init>()V

    invoke-virtual {p1, v0, v1}, Lmiui/maml/ScreenContext;->registerObjectFactory(Ljava/lang/String;Lmiui/maml/ObjectFactory;)V

    const-string/jumbo v0, "ActionCommand"

    new-instance v1, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockscreenActionCommandFactory;

    invoke-direct {v1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockscreenActionCommandFactory;-><init>()V

    invoke-virtual {p1, v0, v1}, Lmiui/maml/ScreenContext;->registerObjectFactory(Ljava/lang/String;Lmiui/maml/ObjectFactory;)V

    return-void
.end method

.method private endUnlockMoving(Lmiui/maml/elements/ElementGroup;Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V
    .locals 3

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lmiui/maml/elements/ElementGroup;->getElements()Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/elements/ScreenElement;

    instance-of v2, v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;

    invoke-virtual {v0, p2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->endUnlockMoving(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V

    goto :goto_0

    :cond_1
    instance-of v2, v0, Lmiui/maml/elements/ElementGroup;

    if-eqz v2, :cond_0

    check-cast v0, Lmiui/maml/elements/ElementGroup;

    invoke-direct {p0, v0, p2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->endUnlockMoving(Lmiui/maml/elements/ElementGroup;Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private startUnlockMoving(Lmiui/maml/elements/ElementGroup;Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V
    .locals 3

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lmiui/maml/elements/ElementGroup;->getElements()Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/elements/ScreenElement;

    instance-of v2, v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;

    invoke-virtual {v0, p2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->startUnlockMoving(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V

    goto :goto_0

    :cond_1
    instance-of v2, v0, Lmiui/maml/elements/ElementGroup;

    if-eqz v2, :cond_0

    check-cast v0, Lmiui/maml/elements/ElementGroup;

    invoke-direct {p0, v0, p2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->startUnlockMoving(Lmiui/maml/elements/ElementGroup;Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public endUnlockMoving(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-direct {p0, v0, p1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->endUnlockMoving(Lmiui/maml/elements/ElementGroup;Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V

    return-void
.end method

.method public finish()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lmiui/maml/ScreenElementRoot;->finish()V

    iput-object v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->curCategory:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mInit:Z

    iput-object v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mBatteryInfo:Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    return-void
.end method

.method public getPasswordMode()I
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mLockscreenCallback:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$LockscreenCallback;

    invoke-interface {v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$LockscreenCallback;->getPasswordMode()I

    move-result v0

    return v0
.end method

.method public haptic(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mLockscreenCallback:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$LockscreenCallback;

    invoke-interface {v0, p1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$LockscreenCallback;->haptic(I)V

    return-void
.end method

.method public init()V
    .locals 13

    const/4 v12, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    new-instance v0, Lcom/android/keyguard/ChooseLockSettingsHelper;

    iget-object v5, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v5, v5, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Lcom/android/keyguard/ChooseLockSettingsHelper;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v5, v5, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "pref_key_enable_notification_body"

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v9

    invoke-static {v5, v8, v6, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v6, :cond_3

    iget-object v5, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mLockscreenCallback:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$LockscreenCallback;

    invoke-interface {v5}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$LockscreenCallback;->isSecure()Z

    move-result v5

    xor-int/lit8 v4, v5, 0x1

    :goto_0
    const-string/jumbo v8, "sms_body_preview"

    iget-object v5, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v9, v5, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    if-eqz v4, :cond_4

    move v5, v6

    :goto_1
    int-to-double v10, v5

    invoke-static {v8, v9, v10, v11}, Lmiui/maml/util/Utils;->putVariableNumber(Ljava/lang/String;Lmiui/maml/data/Variables;D)V

    iput-boolean v6, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mInit:Z

    if-nez v4, :cond_0

    new-instance v1, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/BlockedColumnsSetter;

    const-string/jumbo v5, "content://sms/inbox"

    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v8, "body"

    aput-object v8, v6, v7

    invoke-direct {v1, v5, v6}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/BlockedColumnsSetter;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v5, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mVariableBinderManager:Lmiui/maml/data/VariableBinderManager;

    invoke-virtual {v5, v1}, Lmiui/maml/data/VariableBinderManager;->acceptVisitor(Lmiui/maml/data/VariableBinderVisitor;)V

    :cond_0
    const-string/jumbo v5, "__is_secure"

    iget-object v6, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mLockscreenCallback:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$LockscreenCallback;

    invoke-interface {v6}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$LockscreenCallback;->isSecure()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->putRawAttr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-wide/16 v2, 0x0

    sget-boolean v5, Lmiui/os/Build;->IS_CU_CUSTOMIZATION:Z

    if-eqz v5, :cond_5

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    :cond_1
    :goto_2
    const-string/jumbo v5, "operator_customization"

    iget-object v6, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v6, v6, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-static {v5, v6, v2, v3}, Lmiui/maml/util/Utils;->putVariableNumber(Ljava/lang/String;Lmiui/maml/data/Variables;D)V

    invoke-super {p0}, Lmiui/maml/ScreenElementRoot;->init()V

    iget-object v5, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mBatteryInfo:Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mBatteryInfo:Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    invoke-virtual {p0, v5}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->onRefreshBatteryInfo(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V

    iput-object v12, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mBatteryInfo:Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    :cond_2
    return-void

    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    :cond_4
    move v5, v7

    goto :goto_1

    :cond_5
    sget-boolean v5, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-eqz v5, :cond_6

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    goto :goto_2

    :cond_6
    sget-boolean v5, Lmiui/os/Build;->IS_CT_CUSTOMIZATION:Z

    if-eqz v5, :cond_1

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    goto :goto_2
.end method

.method protected onAddVariableUpdater(Lmiui/maml/data/VariableUpdaterManager;)V
    .locals 1

    invoke-super {p0, p1}, Lmiui/maml/ScreenElementRoot;->onAddVariableUpdater(Lmiui/maml/data/VariableUpdaterManager;)V

    new-instance v0, Lmiui/maml/data/BatteryVariableUpdater;

    invoke-direct {v0, p1}, Lmiui/maml/data/BatteryVariableUpdater;-><init>(Lmiui/maml/data/VariableUpdaterManager;)V

    invoke-virtual {p1, v0}, Lmiui/maml/data/VariableUpdaterManager;->add(Lmiui/maml/data/VariableUpdater;)V

    new-instance v0, Lmiui/maml/data/VolumeVariableUpdater;

    invoke-direct {v0, p1}, Lmiui/maml/data/VolumeVariableUpdater;-><init>(Lmiui/maml/data/VariableUpdaterManager;)V

    invoke-virtual {p1, v0}, Lmiui/maml/data/VariableUpdaterManager;->add(Lmiui/maml/data/VariableUpdater;)V

    return-void
.end method

.method public onCommand(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "unlock"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->unlocked(Landroid/content/Intent;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "pokewakelock"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->pokeWakelock()V

    goto :goto_0
.end method

.method protected onLoad(Lorg/w3c/dom/Element;)Z
    .locals 2

    invoke-super {p0, p1}, Lmiui/maml/ScreenElementRoot;->onLoad(Lorg/w3c/dom/Element;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string/jumbo v0, "frameRate"

    iget v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->DEFAULT_FRAME_RATE:F

    invoke-static {p1, v0, v1}, Lmiui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mNormalFrameRate:F

    const-string/jumbo v0, "frameRateCharging"

    iget v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mNormalFrameRate:F

    invoke-static {p1, v0, v1}, Lmiui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mFrameRateCharging:F

    const-string/jumbo v0, "frameRateBatteryLow"

    iget v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mNormalFrameRate:F

    invoke-static {p1, v0, v1}, Lmiui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mFrameRateBatteryLow:F

    const-string/jumbo v0, "frameRateBatteryFull"

    iget v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mNormalFrameRate:F

    invoke-static {p1, v0, v1}, Lmiui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mFrameRateBatteryFull:F

    const-string/jumbo v0, "false"

    const-string/jumbo v1, "clearCanvas"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->setClearCanvas(Z)V

    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mVariableBinderManager:Lmiui/maml/data/VariableBinderManager;

    invoke-static {v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/BuiltinVariableBinders;->fill(Lmiui/maml/data/VariableBinderManager;)V

    iget v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mNormalFrameRate:F

    iput v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mFrameRate:F

    const/4 v0, 0x1

    return v0
.end method

.method public onRefreshBatteryInfo(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 7

    const/4 v6, 0x0

    iget-boolean v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mInit:Z

    if-nez v2, :cond_0

    iput-object p1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mBatteryInfo:Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    return-void

    :cond_0
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mBatteryLevel:Lmiui/maml/data/IndexedVariable;

    iget v3, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    int-to-double v4, v3

    invoke-virtual {v2, v4, v5}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mBatteryType:Lmiui/maml/data/IndexedVariable;

    iget v3, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->plugged:I

    int-to-double v4, v3

    invoke-virtual {v2, v4, v5}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->curCategory:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isPluggedIn()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isBatteryLow()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_1
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isPluggedIn()Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    const/16 v3, 0x64

    if-lt v2, v3, :cond_2

    const-string/jumbo v0, "BatteryFull"

    const/4 v1, 0x3

    iget v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mFrameRateBatteryFull:F

    iput v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mFrameRate:F

    :goto_0
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->curCategory:Ljava/lang/String;

    if-ne v0, v2, :cond_5

    return-void

    :cond_2
    const-string/jumbo v0, "Charging"

    const/4 v1, 0x1

    iget v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mFrameRateCharging:F

    iput v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mFrameRate:F

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "BatteryLow"

    const/4 v1, 0x2

    iget v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mFrameRateBatteryLow:F

    iput v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mFrameRate:F

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "Normal"

    const/4 v1, 0x0

    iget v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mNormalFrameRate:F

    iput v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mFrameRate:F

    goto :goto_0

    :cond_5
    iget v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mFrameRate:F

    invoke-virtual {p0, v2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->requestFramerate(F)V

    invoke-virtual {p0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->requestUpdate()V

    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mBatteryState:Lmiui/maml/data/IndexedVariable;

    int-to-double v4, v1

    invoke-virtual {v2, v4, v5}, Lmiui/maml/data/IndexedVariable;->set(D)V

    const-string/jumbo v2, "BatteryFull"

    invoke-virtual {p0, v2, v6}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->showCategory(Ljava/lang/String;Z)V

    const-string/jumbo v2, "Charging"

    invoke-virtual {p0, v2, v6}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->showCategory(Ljava/lang/String;Z)V

    const-string/jumbo v2, "BatteryLow"

    invoke-virtual {p0, v2, v6}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->showCategory(Ljava/lang/String;Z)V

    const-string/jumbo v2, "Normal"

    invoke-virtual {p0, v2, v6}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->showCategory(Ljava/lang/String;Z)V

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->showCategory(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->curCategory:Ljava/lang/String;

    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/maml/elements/ElementGroup;->getElements()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mLockscreenCallback:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$LockscreenCallback;

    invoke-interface {v0, v2, v1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$LockscreenCallback;->unlocked(Landroid/content/Intent;I)V

    return v1

    :cond_1
    invoke-super {p0, p1}, Lmiui/maml/ScreenElementRoot;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onUIInteractive(Lmiui/maml/elements/ScreenElement;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mLockscreenCallback:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$LockscreenCallback;

    invoke-interface {v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$LockscreenCallback;->pokeWakelock()V

    return-void
.end method

.method public pokeWakelock()V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mLockscreenCallback:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$LockscreenCallback;

    invoke-interface {v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$LockscreenCallback;->pokeWakelock()V

    return-void
.end method

.method public setLockscreenCallback(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$LockscreenCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mLockscreenCallback:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$LockscreenCallback;

    return-void
.end method

.method protected shouldPlaySound()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mLockscreenCallback:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$LockscreenCallback;

    invoke-interface {v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$LockscreenCallback;->isSoundEnable()Z

    move-result v0

    return v0
.end method

.method public startUnlockMoving(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-direct {p0, v0, p1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->startUnlockMoving(Lmiui/maml/elements/ElementGroup;Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V

    return-void
.end method

.method public unlockVerify(Ljava/lang/String;I)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mLockscreenCallback:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$LockscreenCallback;

    invoke-interface {v0, p1, p2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$LockscreenCallback;->unlockVerify(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public unlocked(Landroid/content/Intent;I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mLockscreenCallback:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$LockscreenCallback;

    invoke-interface {v0, p1, p2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$LockscreenCallback;->unlocked(Landroid/content/Intent;I)V

    return-void
.end method
