.class Landroid/telephony/PhoneNumberUtilsInjector;
.super Ljava/lang/Object;
.source "PhoneNumberUtilsInjector.java"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static appendNonSeparator(Ljava/lang/StringBuilder;CI)V
    .registers 5

    if-nez p2, :cond_7

    const/16 v1, 0x2b

    if-ne p1, v1, :cond_7

    return-void

    :cond_7
    const/16 v1, 0xa

    invoke-static {p1, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_19

    invoke-static {p1}, Lmiui/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_19
    return-void
.end method

.method private static containsCountryCode(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    const/4 v3, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    return v3

    :cond_8
    const-string/jumbo v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v4, v1

    move v2, v3

    :goto_11
    if-ge v2, v4, :cond_20

    aget-object v0, v1, v2

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1d

    const/4 v2, 0x1

    return v2

    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_20
    return v3
.end method

.method static getCdmaTelephonyProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    const/4 v8, 0x0

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_d

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_e

    :cond_d
    return-object p1

    :cond_e
    const-string/jumbo v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1a

    return-object v4

    :cond_1a
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    :goto_24
    array-length v6, v5

    if-ge v2, v6, :cond_43

    invoke-static {}, Lmiui/telephony/TelephonyManagerEx;->getDefault()Lmiui/telephony/TelephonyManagerEx;

    move-result-object v6

    const-string/jumbo v7, "gsm.current.phone-type"

    invoke-virtual {v6, v2, v7, v1}, Lmiui/telephony/TelephonyManagerEx;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_40

    aget-object v6, v5, v2

    if-nez v6, :cond_3d

    :goto_3c
    return-object p1

    :cond_3d
    aget-object p1, v5, v2

    goto :goto_3c

    :cond_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    :cond_43
    return-object p1
.end method

.method private static matchBrazilCarrierCodeAndPrefix(Ljava/lang/String;I)Z
    .registers 9

    const/16 v6, 0x33

    const/16 v5, 0x32

    const/16 v4, 0x31

    const/4 v3, 0x2

    const/4 v2, 0x1

    if-ne p1, v2, :cond_14

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    if-ne v0, v1, :cond_ac

    return v2

    :cond_14
    const/4 v0, 0x3

    if-ne p1, v0, :cond_ac

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    if-ne v0, v1, :cond_ac

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_2d

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_2d

    return v2

    :cond_2d
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_3c

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x35

    if-ne v0, v1, :cond_3c

    return v2

    :cond_3c
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_4b

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x37

    if-ne v0, v1, :cond_4b

    return v2

    :cond_4b
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_58

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_58

    return v2

    :cond_58
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_65

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v6, :cond_65

    return v2

    :cond_65
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_74

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x35

    if-ne v0, v1, :cond_74

    return v2

    :cond_74
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v6, :cond_81

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_81

    return v2

    :cond_81
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v6, :cond_8e

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_8e

    return v2

    :cond_8e
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x34

    if-ne v0, v1, :cond_9d

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_9d

    return v2

    :cond_9d
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x34

    if-ne v0, v1, :cond_ac

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v6, :cond_ac

    return v2

    :cond_ac
    const/4 v0, 0x0

    return v0
.end method

.method public static matchBrazilSuccess(Ljava/lang/String;ILjava/lang/String;I)Z
    .registers 6

    const-string/jumbo v0, "gsm.sim.operator.iso-country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "br"

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtilsInjector;->containsCountryCode(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtilsInjector;->matchBrazilCarrierCodeAndPrefix(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-static {p2, p3}, Landroid/telephony/PhoneNumberUtilsInjector;->matchBrazilCarrierCodeAndPrefix(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    return v0

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public static removeBrazilCarrierCodeAndPrefix(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v3, 0x3

    const/4 v2, 0x1

    const-string/jumbo v0, "gsm.sim.operator.iso-country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "br"

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtilsInjector;->containsCountryCode(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_23

    invoke-static {p0, v3}, Landroid/telephony/PhoneNumberUtilsInjector;->matchBrazilCarrierCodeAndPrefix(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_23
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_34

    invoke-static {p0, v2}, Landroid/telephony/PhoneNumberUtilsInjector;->matchBrazilCarrierCodeAndPrefix(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_34
    return-object p0
.end method
