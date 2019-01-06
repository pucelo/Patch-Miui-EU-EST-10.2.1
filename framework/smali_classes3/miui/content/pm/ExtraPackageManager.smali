.class public Lmiui/content/pm/ExtraPackageManager;
.super Ljava/lang/Object;
.source "ExtraPackageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/content/pm/ExtraPackageManager$1;,
        Lmiui/content/pm/ExtraPackageManager$SignatureHolder;
    }
.end annotation


# static fields
.field private static final CORE_SYSTEM_PERMISSIONS:[Ljava/lang/String;

.field public static final DEXOPT_INTERPRET_ONLY:I = 0x20000000

.field public static final INSTALL_FROM_BOOTING:I = 0x40000000

.field public static final INSTALL_IN_BG:I = -0x80000000

.field private static final MIUI_SYSTEM_PACKAGES:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SIGNATURE_HOLDER:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton",
            "<",
            "Lmiui/content/pm/ExtraPackageManager$SignatureHolder;",
            ">;"
        }
    .end annotation
.end field

.field private static final TRUSTED_PACKAGES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "android.permission.ACCOUNT_MANAGER"

    aput-object v1, v0, v3

    const-string/jumbo v1, "android.permission.BIND_ACCESSIBILITY_SERVICE"

    aput-object v1, v0, v4

    const-string/jumbo v1, "android.permission.BIND_AUTOFILL_SERVICE"

    aput-object v1, v0, v5

    const-string/jumbo v1, "android.permission.BIND_CHOOSER_TARGET_SERVICE"

    aput-object v1, v0, v6

    const-string/jumbo v1, "android.permission.BIND_CONDITION_PROVIDER_SERVICE"

    aput-object v1, v0, v7

    const-string/jumbo v1, "android.permission.BIND_DREAM_SERVICE"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "android.permission.BIND_INPUT_METHOD"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "android.permission.BIND_MIDI_DEVICE_SERVICE"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "android.permission.BIND_NOTIFICATION_LISTENER_SERVICE"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "android.permission.BIND_PRINT_SERVICE"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "android.permission.BIND_TEXT_SERVICE"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "android.permission.BIND_VOICE_INTERACTION"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "android.permission.BIND_VPN_SERVICE"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "android.permission.BIND_VR_LISTENER_SERVICE"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sput-object v0, Lmiui/content/pm/ExtraPackageManager;->CORE_SYSTEM_PERMISSIONS:[Ljava/lang/String;

    new-instance v0, Lmiui/content/pm/ExtraPackageManager$1;

    invoke-direct {v0}, Lmiui/content/pm/ExtraPackageManager$1;-><init>()V

    sput-object v0, Lmiui/content/pm/ExtraPackageManager;->SIGNATURE_HOLDER:Landroid/util/Singleton;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "com.google.android.googlequicksearchbox"

    aput-object v1, v0, v3

    const-string/jumbo v1, "com.google.android.syncadapters.calendar"

    aput-object v1, v0, v4

    const-string/jumbo v1, "com.google.android.syncadapters.contacts"

    aput-object v1, v0, v5

    const-string/jumbo v1, "com.google.android.talk"

    aput-object v1, v0, v6

    const-string/jumbo v1, "com.google.android.tts"

    aput-object v1, v0, v7

    const-string/jumbo v1, "com.google.android.voicesearch"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lmiui/content/pm/ExtraPackageManager;->TRUSTED_PACKAGES:[Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lmiui/content/pm/ExtraPackageManager;->MIUI_SYSTEM_PACKAGES:Ljava/util/HashSet;

    sget-object v0, Lmiui/content/pm/ExtraPackageManager;->MIUI_SYSTEM_PACKAGES:Ljava/util/HashSet;

    const-string/jumbo v1, "com.miui.home"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/content/pm/ExtraPackageManager;->MIUI_SYSTEM_PACKAGES:Ljava/util/HashSet;

    const-string/jumbo v1, "com.android.contacts"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/content/pm/ExtraPackageManager;->MIUI_SYSTEM_PACKAGES:Ljava/util/HashSet;

    const-string/jumbo v1, "com.android.mms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/content/pm/ExtraPackageManager;->MIUI_SYSTEM_PACKAGES:Ljava/util/HashSet;

    const-string/jumbo v1, "com.android.browser"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/content/pm/ExtraPackageManager;->MIUI_SYSTEM_PACKAGES:Ljava/util/HashSet;

    const-string/jumbo v1, "com.android.camera"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/content/pm/ExtraPackageManager;->MIUI_SYSTEM_PACKAGES:Ljava/util/HashSet;

    const-string/jumbo v1, "com.miui.gallery"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/content/pm/ExtraPackageManager;->MIUI_SYSTEM_PACKAGES:Ljava/util/HashSet;

    const-string/jumbo v1, "com.miui.player"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/content/pm/ExtraPackageManager;->MIUI_SYSTEM_PACKAGES:Ljava/util/HashSet;

    const-string/jumbo v1, "com.android.email"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/content/pm/ExtraPackageManager;->MIUI_SYSTEM_PACKAGES:Ljava/util/HashSet;

    const-string/jumbo v1, "com.miui.voiceassist"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I
    .registers 8

    const/4 v4, 0x0

    if-nez p0, :cond_9

    if-nez p1, :cond_7

    const/4 v3, 0x1

    :goto_6
    return v3

    :cond_7
    const/4 v3, -0x1

    goto :goto_6

    :cond_9
    if-nez p1, :cond_d

    const/4 v3, -0x2

    return v3

    :cond_d
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    array-length v5, p0

    move v3, v4

    :goto_14
    if-ge v3, v5, :cond_1e

    aget-object v2, p0, v3

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_1e
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    array-length v5, p1

    move v3, v4

    :goto_25
    if-ge v3, v5, :cond_2f

    aget-object v2, p1, v3

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    :cond_2f
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    return v4

    :cond_36
    const/4 v3, -0x3

    return v3
.end method

.method public static handleIfContainsXiaomiAccountType(Landroid/content/Intent;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_36

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_36

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "account"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    if-eqz v2, :cond_36

    const-string/jumbo v3, "com.xiaomi"

    iget-object v4, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    const/4 v0, 0x1

    const-string/jumbo v3, "response"

    invoke-virtual {p0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/accounts/AccountAuthenticatorResponse;

    if-eqz v1, :cond_36

    const-string/jumbo v3, "canceled"

    const/4 v4, 0x4

    invoke-virtual {v1, v4, v3}, Landroid/accounts/AccountAuthenticatorResponse;->onError(ILjava/lang/String;)V

    :cond_36
    return v0
.end method

.method public static isMiuiSystemApp(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .registers 3

    sget-object v0, Lmiui/content/pm/ExtraPackageManager;->MIUI_SYSTEM_PACKAGES:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isTrustedAccountSignature(Landroid/content/pm/PackageManager;Ljava/lang/String;II)Z
    .registers 15

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v4, 0x3e9

    if-eq p3, v4, :cond_a

    const/16 v4, 0x2648

    if-ne p3, v4, :cond_b

    :cond_a
    return v5

    :cond_b
    const-string/jumbo v4, "com.xiaomi"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_68

    invoke-virtual {p0, p3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    const/16 v4, 0x40

    :try_start_1b
    invoke-virtual {p0, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1b .. :try_end_1e} :catch_34

    move-result-object v3

    :goto_1f
    if-eqz v3, :cond_68

    sget-object v4, Lmiui/content/pm/ExtraPackageManager;->SIGNATURE_HOLDER:Landroid/util/Singleton;

    invoke-virtual {v4}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/content/pm/ExtraPackageManager$SignatureHolder;

    iget-object v4, v4, Lmiui/content/pm/ExtraPackageManager$SignatureHolder;->MIUI_PLATFORM_SIGNATURES:[Landroid/content/pm/Signature;

    iget-object v7, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v4, v7}, Lmiui/content/pm/ExtraPackageManager;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result v4

    if-nez v4, :cond_36

    return v5

    :catch_34
    move-exception v1

    goto :goto_1f

    :cond_36
    sget-object v4, Lmiui/content/pm/ExtraPackageManager;->SIGNATURE_HOLDER:Landroid/util/Singleton;

    invoke-virtual {v4}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/content/pm/ExtraPackageManager$SignatureHolder;

    iget-object v7, v4, Lmiui/content/pm/ExtraPackageManager$SignatureHolder;->ACCOUNT_WHITE_LIST:[Lmiui/content/pm/ExtraPackageManager$SignatureHolder$WhiteListEntity;

    array-length v8, v7

    move v4, v6

    :goto_42
    if-ge v4, v8, :cond_5c

    aget-object v2, v7, v4

    iget-object v9, v2, Lmiui/content/pm/ExtraPackageManager$SignatureHolder$WhiteListEntity;->pkgName:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_59

    iget-object v9, v2, Lmiui/content/pm/ExtraPackageManager$SignatureHolder$WhiteListEntity;->signatures:[Landroid/content/pm/Signature;

    iget-object v10, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v9, v10}, Lmiui/content/pm/ExtraPackageManager;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result v9

    if-nez v9, :cond_59

    return v5

    :cond_59
    add-int/lit8 v4, v4, 0x1

    goto :goto_42

    :cond_5c
    const-string/jumbo v4, "android"

    iget-object v7, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v4, v7}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_68

    return v5

    :cond_68
    invoke-virtual {p0, p2, p3}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result v4

    if-nez v4, :cond_70

    move v4, v5

    :goto_6f
    return v4

    :cond_70
    move v4, v6

    goto :goto_6f
.end method

.method public static isTrustedAppEntry(Ljava/util/jar/JarEntry;Ljava/lang/String;)Z
    .registers 4

    const-string/jumbo v0, "classes.dex"

    invoke-virtual {p0}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Lmiui/content/pm/ExtraPackageManager;->TRUSTED_PACKAGES:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static isTrustedSystemSignature([Landroid/content/pm/Signature;)Z
    .registers 2

    const-string/jumbo v0, ""

    invoke-static {p0, v0}, Lmiui/content/pm/ExtraPackageManager;->isTrustedSystemSignature([Landroid/content/pm/Signature;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isTrustedSystemSignature([Landroid/content/pm/Signature;Ljava/lang/String;)Z
    .registers 8

    const/4 v2, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v1, v3, :cond_10

    sget-object v1, Lmiui/content/pm/ExtraPackageManager;->CORE_SYSTEM_PERMISSIONS:[Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    return v2

    :cond_10
    sget-object v1, Lmiui/content/pm/ExtraPackageManager;->SIGNATURE_HOLDER:Landroid/util/Singleton;

    invoke-virtual {v1}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/content/pm/ExtraPackageManager$SignatureHolder;

    iget-object v3, v1, Lmiui/content/pm/ExtraPackageManager$SignatureHolder;->TRUSTED_SIGNATURES:[[Landroid/content/pm/Signature;

    array-length v4, v3

    move v1, v2

    :goto_1c
    if-ge v1, v4, :cond_2b

    aget-object v0, v3, v1

    invoke-static {v0, p0}, Lmiui/content/pm/ExtraPackageManager;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result v5

    if-nez v5, :cond_28

    const/4 v1, 0x1

    return v1

    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_2b
    return v2
.end method
