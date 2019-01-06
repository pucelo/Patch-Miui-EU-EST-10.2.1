.class public Lcom/android/systemui/statusbar/policy/TelephonyIcons;
.super Ljava/lang/Object;
.source "TelephonyIcons.java"


# static fields
.field static final CARRIER_NETWORK_CHANGE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final DATA_DISABLED:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final DATA_SIGNAL_STRENGTH:[[I

.field static final E:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final FOUR_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final FOUR_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final H:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final LTE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final LTE_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final ONE_X:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field public static final TELEPHONY_SIGNAL_STRENGTH:[[I

.field public static final TELEPHONY_SIGNAL_STRENGTH_ROAMING:[[I

.field static final TELEPHONY_SIGNAL_STRENGTH_ROAMING_R:[[I

.field static final THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final UNKNOWN:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final WFC:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field private static isInitiated:Z

.field static mDataActivityArray:[Ljava/lang/String;

.field static mDataTypeArray:[Ljava/lang/String;

.field static mDataTypeDescriptionArray:[Ljava/lang/String;

.field static mDataTypeGenerationArray:[Ljava/lang/String;

.field static mDataTypeGenerationDescArray:[Ljava/lang/String;

.field private static mRes:Landroid/content/res/Resources;

.field static mSelectedDataActivityIndex:[I

.field static mSelectedDataTypeDesc:[Ljava/lang/String;

.field static mSelectedDataTypeIcon:[I

.field static mSelectedQSDataTypeIcon:[I

.field static mSelectedSignalStreagthIndex:[I

.field static mSignalNullArray:[Ljava/lang/String;

.field static mSignalStrengthArray:[Ljava/lang/String;

.field static mSignalStrengthDesc:[Ljava/lang/String;

.field static mSignalStrengthRoamingArray:[Ljava/lang/String;

.field static mStacked2SingleIconLookup:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static shouldShowLTEFor4G:Z


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/4 v3, 0x6

    const/4 v14, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    new-array v0, v14, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    new-array v0, v14, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_ROAMING:[[I

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_SIGNAL_STRENGTH:[[I

    const/4 v0, 0x2

    new-array v0, v0, [[I

    const v1, 0x7f08049f

    const v3, 0x7f0804e1

    const v4, 0x7f080527

    const v6, 0x7f08056d

    const v7, 0x7f0805b3

    filled-new-array {v1, v3, v4, v6, v7}, [I

    move-result-object v1

    aput-object v1, v0, v5

    const v1, 0x7f08049e

    const v3, 0x7f0804e0

    const v4, 0x7f080526

    const v6, 0x7f08056c

    const v7, 0x7f0805b2

    filled-new-array {v1, v3, v4, v6, v7}, [I

    move-result-object v1

    aput-object v1, v0, v14

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_ROAMING_R:[[I

    sput-boolean v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->isInitiated:Z

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "CARRIER_NETWORK_CHANGE"

    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v9, v3, v5

    const v10, 0x7f110040

    move-object v3, v2

    move v6, v5

    move v7, v5

    move v8, v5

    move v11, v5

    move v12, v5

    move v13, v5

    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->CARRIER_NETWORK_CHANGE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "3G"

    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v9, v3, v5

    const v10, 0x7f11004c

    const v11, 0x7f0803c2

    const v13, 0x7f080193

    move-object v3, v2

    move v6, v5

    move v7, v5

    move v8, v5

    move v12, v14

    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "WFC"

    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v9, v3, v5

    move-object v3, v2

    move v6, v5

    move v7, v5

    move v8, v5

    move v10, v5

    move v11, v5

    move v12, v5

    move v13, v5

    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->WFC:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "Unknown"

    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v9, v3, v5

    move-object v3, v2

    move v6, v5

    move v7, v5

    move v8, v5

    move v10, v5

    move v11, v5

    move v12, v5

    move v13, v5

    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->UNKNOWN:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "E"

    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v9, v3, v5

    const v10, 0x7f110050

    const v11, 0x7f0803c5

    const v13, 0x7f080197

    move-object v3, v2

    move v6, v5

    move v7, v5

    move v8, v5

    move v12, v5

    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->E:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "1X"

    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v9, v3, v5

    const v10, 0x7f11004f

    const v11, 0x7f0803c1

    const v13, 0x7f080191

    move-object v3, v2

    move v6, v5

    move v7, v5

    move v8, v5

    move v12, v14

    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONE_X:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "G"

    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v9, v3, v5

    const v10, 0x7f110051

    const v11, 0x7f0803c6

    const v13, 0x7f08019a

    move-object v3, v2

    move v6, v5

    move v7, v5

    move v8, v5

    move v12, v5

    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "H"

    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v9, v3, v5

    const v10, 0x7f11004b

    const v11, 0x7f0803c7

    const v13, 0x7f08019b

    move-object v3, v2

    move v6, v5

    move v7, v5

    move v8, v5

    move v12, v5

    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->H:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "4G"

    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v9, v3, v5

    const v10, 0x7f11004d

    const v11, 0x7f0803c3

    const v13, 0x7f080194

    move-object v3, v2

    move v6, v5

    move v7, v5

    move v8, v5

    move v12, v14

    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "4G+"

    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v9, v3, v5

    const v10, 0x7f11004e

    const v11, 0x7f0803c4

    const v13, 0x7f080195

    move-object v3, v2

    move v6, v5

    move v7, v5

    move v8, v5

    move v12, v14

    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "LTE"

    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v9, v3, v5

    const v10, 0x7f110053

    const v11, 0x7f0803c9

    const v13, 0x7f08019e

    move-object v3, v2

    move v6, v5

    move v7, v5

    move v8, v5

    move v12, v14

    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "LTE+"

    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v9, v3, v5

    const v10, 0x7f110054

    const v11, 0x7f0803ca

    const v13, 0x7f08019f

    move-object v3, v2

    move v6, v5

    move v7, v5

    move v8, v5

    move v12, v14

    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "DataDisabled"

    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v9, v3, v5

    const v10, 0x7f110045

    const v11, 0x7f0803c0

    const v13, 0x7f0800eb

    move-object v3, v2

    move v6, v5

    move v7, v5

    move v8, v5

    move v12, v5

    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DISABLED:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    return-void

    :array_0
    .array-data 4
        0x7f080480
        0x7f0804c2
        0x7f080508
        0x7f08054e
        0x7f080594
        0x7f0805de
    .end array-data

    :array_1
    .array-data 4
        0x7f080480
        0x7f0804c2
        0x7f080508
        0x7f08054e
        0x7f080594
        0x7f0805de
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static convertMobileStrengthIcon(I)I
    .locals 2

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mStacked2SingleIconLookup:Landroid/util/SparseArray;

    if-nez v1, :cond_0

    return p0

    :cond_0
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mStacked2SingleIconLookup:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_1

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mStacked2SingleIconLookup:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    :cond_1
    return p0
.end method

.method static getDataActivity(II)I
    .locals 8

    const/4 v7, 0x0

    const-string/jumbo v2, "TelephonyIcons"

    const-string/jumbo v3, "getDataActivity, slot=%d, activity=%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataActivityArray:[Ljava/lang/String;

    aget-object v4, v4, p0

    const-string/jumbo v5, "com.android.systemui"

    invoke-virtual {v3, v4, v7, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    aget v4, v4, p0

    aget-object v4, v0, v4

    const-string/jumbo v5, "com.android.systemui"

    invoke-virtual {v3, v4, v7, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    aget-object v3, v1, p1

    const-string/jumbo v4, "com.android.systemui"

    invoke-virtual {v2, v3, v7, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method static getDataTypeDesc(I)I
    .locals 4

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:[Ljava/lang/String;

    aget-object v1, v1, p0

    const-string/jumbo v2, "com.android.systemui"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static getDataTypeIcon(I)I
    .locals 6

    const-string/jumbo v0, "TelephonyIcons"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getDataTypeIcon "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "sub=%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    aget v0, v0, p0

    return v0
.end method

.method public static getNetworkTypeName(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string/jumbo v0, ""

    return-object v0

    :pswitch_0
    sget-boolean v0, Lcom/android/systemui/MCCUtils;->sIsUSAOperation:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    return-object v0

    :cond_0
    sget-boolean v0, Lmiui/os/Build;->IS_CM_CUSTOMIZATION_TEST:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "2G"

    return-object v0

    :cond_1
    const-string/jumbo v0, "G"

    return-object v0

    :pswitch_1
    sget-boolean v0, Lcom/android/systemui/MCCUtils;->sIsUSAOperation:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, ""

    return-object v0

    :cond_2
    const-string/jumbo v0, "E"

    return-object v0

    :pswitch_2
    sget-boolean v0, Lcom/android/systemui/MCCUtils;->sIsUSAOperation:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, ""

    return-object v0

    :cond_3
    const-string/jumbo v0, "3G"

    return-object v0

    :pswitch_3
    sget-boolean v0, Lcom/android/systemui/MCCUtils;->sIsUSAOperation:Z

    if-eqz v0, :cond_4

    const-string/jumbo v0, "4G"

    return-object v0

    :cond_4
    sget-boolean v0, Lcom/android/systemui/MCCUtils;->sIsMXOperation:Z

    if-eqz v0, :cond_5

    const-string/jumbo v0, "3G"

    return-object v0

    :cond_5
    const-string/jumbo v0, "H"

    return-object v0

    :pswitch_4
    sget-boolean v0, Lcom/android/systemui/MCCUtils;->sIsUSAOperation:Z

    if-nez v0, :cond_6

    sget-boolean v0, Lcom/android/systemui/MCCUtils;->sIsMXOperation:Z

    if-eqz v0, :cond_7

    :cond_6
    const-string/jumbo v0, "4G"

    return-object v0

    :cond_7
    const-string/jumbo v0, "H+"

    return-object v0

    :pswitch_5
    sget-boolean v0, Lcom/android/systemui/MCCUtils;->sIsUSAOperation:Z

    if-nez v0, :cond_8

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->shouldShowLTEFor4G:Z

    if-eqz v0, :cond_9

    :cond_8
    const-string/jumbo v0, "LTE"

    return-object v0

    :cond_9
    sget-boolean v0, Lmiui/os/Build;->IS_CU_CUSTOMIZATION_TEST:Z

    if-nez v0, :cond_a

    sget-boolean v0, Lcom/android/systemui/MCCUtils;->sIsMXOperation:Z

    if-eqz v0, :cond_b

    :cond_a
    const-string/jumbo v0, "4G LTE"

    return-object v0

    :cond_b
    const-string/jumbo v0, "4G"

    return-object v0

    :pswitch_6
    sget-boolean v0, Lcom/android/systemui/MCCUtils;->sIsUSAOperation:Z

    if-nez v0, :cond_c

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->shouldShowLTEFor4G:Z

    if-eqz v0, :cond_d

    :cond_c
    const-string/jumbo v0, "LTE+"

    return-object v0

    :cond_d
    sget-boolean v0, Lcom/android/systemui/MCCUtils;->sIsIROperation:Z

    if-nez v0, :cond_e

    sget-boolean v0, Lcom/android/systemui/MCCUtils;->sIsNPOperation:Z

    if-eqz v0, :cond_f

    :cond_e
    const-string/jumbo v0, "4.5G"

    return-object v0

    :cond_f
    const-string/jumbo v0, "4G+"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method static getQSDataTypeIcon(I)I
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    aget v0, v0, p0

    return v0
.end method

.method static getRoamingSignalIconId(II)I
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_ROAMING_R:[[I

    aget-object v0, v0, p1

    aget v0, v0, p0

    return v0
.end method

.method static getSignalNullIcon(I)I
    .locals 6

    const/4 v5, 0x0

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSignalNullArray:[Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSignalNullArray:[Ljava/lang/String;

    aget-object v1, v2, p0

    const-string/jumbo v2, "TelephonyIcons"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "null signal icon name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    const-string/jumbo v3, "com.android.systemui"

    invoke-virtual {v2, v1, v5, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static getSignalStrengthDes(I)[I
    .locals 7

    const/4 v6, 0x5

    new-array v1, v6, [I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v6, :cond_0

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSignalStrengthDesc:[Ljava/lang/String;

    aget-object v3, v3, v0

    const-string/jumbo v4, "com.android.systemui"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method static getSignalStrengthIcon(IIIZ)I
    .locals 7

    const/4 v6, 0x0

    const-string/jumbo v0, "TelephonyIcons"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getSignalStrengthIcon: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "slot=%d, inetCondition=%d, level=%d, roaming=%b"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    aget-object v0, v0, v6

    aget v0, v0, p2

    return v0
.end method

.method static getStackedVoiceIcon(I)I
    .locals 1

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    const v0, 0x7f080489

    goto :goto_0

    :pswitch_1
    const v0, 0x7f0804cb

    goto :goto_0

    :pswitch_2
    const v0, 0x7f080511

    goto :goto_0

    :pswitch_3
    const v0, 0x7f080557

    goto :goto_0

    :pswitch_4
    const v0, 0x7f08059d

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method static initStacked2SingleIconLookup()V
    .locals 7

    const/4 v6, 0x0

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    sput-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mStacked2SingleIconLookup:Landroid/util/SparseArray;

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0300d8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0300d7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mStacked2SingleIconLookup:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mStacked2SingleIconLookup:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {v1, v0, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    const-string/jumbo v3, "TelephonyIcons"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "initStacked2SingleIconLookup: size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mStacked2SingleIconLookup:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static readIconsFromXml(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    sget-boolean v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->isInitiated:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "TelephonyIcons"

    const-string/jumbo v2, "readIconsFromXml, already read!"

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->updateShowLTEFor4G(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    :try_start_0
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f03004c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeArray:[Ljava/lang/String;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0300f9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeDescriptionArray:[Ljava/lang/String;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0300fa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeGenerationArray:[Ljava/lang/String;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0300fb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeGenerationDescArray:[Ljava/lang/String;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f03004b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataActivityArray:[Ljava/lang/String;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f03004f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSignalStrengthArray:[Ljava/lang/String;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f030050

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSignalStrengthRoamingArray:[Ljava/lang/String;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f03004e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSignalNullArray:[Ljava/lang/String;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f030098

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSignalStrengthDesc:[Ljava/lang/String;

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->initStacked2SingleIconLookup()V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeArray:[Ljava/lang/String;

    array-length v1, v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeArray:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    :cond_1
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    if-nez v1, :cond_2

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeArray:[Ljava/lang/String;

    array-length v1, v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeArray:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    :cond_2
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:[Ljava/lang/String;

    if-nez v1, :cond_3

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeArray:[Ljava/lang/String;

    array-length v1, v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeArray:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/String;

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:[Ljava/lang/String;

    :cond_3
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    if-nez v1, :cond_4

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataActivityArray:[Ljava/lang/String;

    array-length v1, v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataActivityArray:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    :cond_4
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    if-nez v1, :cond_5

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSignalStrengthArray:[Ljava/lang/String;

    array-length v1, v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSignalStrengthArray:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    :cond_5
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->isInitiated:Z

    return-void

    :catch_0
    move-exception v0

    sput-boolean v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->isInitiated:Z

    const-string/jumbo v1, "TelephonyIcons"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "readIconsFromXml, exception happened: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static updateShowLTEFor4G(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "status_bar_show_lte_for_4g"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p0

    sput-boolean p0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->shouldShowLTEFor4G:Z

    return-void
.end method
