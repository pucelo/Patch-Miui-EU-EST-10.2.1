.class public Lmiui/maml/util/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/util/Utils$GetChildWrapper;,
        Lmiui/maml/util/Utils$Point;,
        Lmiui/maml/util/Utils$XmlTraverseListener;
    }
.end annotation


# static fields
.field private static INTENT_BLACK_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.intent.action.BATTERY_OKAY"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.intent.action.DREAMING_STARTED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.intent.action.DREAMING_STOPPED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.intent.action.MY_PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.intent.action.PACKAGE_FIRST_LAUNCH"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.intent.action.PACKAGE_INSTALL"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.intent.action.PACKAGE_VERIFIED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.intent.action.REBOOT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.intent.action.UID_REMOVED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Dist(Lmiui/maml/util/Utils$Point;Lmiui/maml/util/Utils$Point;Z)D
    .registers 11

    iget-wide v4, p0, Lmiui/maml/util/Utils$Point;->x:D

    iget-wide v6, p1, Lmiui/maml/util/Utils$Point;->x:D

    sub-double v0, v4, v6

    iget-wide v4, p0, Lmiui/maml/util/Utils$Point;->y:D

    iget-wide v6, p1, Lmiui/maml/util/Utils$Point;->y:D

    sub-double v2, v4, v6

    if-eqz p2, :cond_18

    mul-double v4, v0, v0

    mul-double v6, v2, v2

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    return-wide v4

    :cond_18
    mul-double v4, v0, v0

    mul-double v6, v2, v2

    add-double/2addr v4, v6

    return-wide v4
.end method

.method public static addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string/jumbo v0, "_"

    invoke-static {p0, v0, p1}, Lmiui/maml/util/Utils;->addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/16 v2, 0x2e

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_a

    return-object p0

    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static arrContains([Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    const/4 v2, 0x0

    array-length v3, p0

    move v1, v2

    :goto_3
    if-ge v1, v3, :cond_12

    aget-object v0, p0, v1

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/4 v1, 0x1

    return v1

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_12
    return v2
.end method

.method public static arrayContains([Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    const/4 v2, 0x0

    array-length v3, p0

    move v1, v2

    :goto_3
    if-ge v1, v3, :cond_12

    aget-object v0, p0, v1

    invoke-static {v0, p1}, Lmiui/maml/util/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/4 v1, 0x1

    return v1

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_12
    return v2
.end method

.method public static asserts(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string/jumbo v0, "assert error"

    invoke-static {p0, v0}, Lmiui/maml/util/Utils;->asserts(ZLjava/lang/String;)V

    return-void
.end method

.method public static asserts(ZLjava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p0, :cond_8

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    return-void
.end method

.method public static doubleToString(D)Ljava/lang/String;
    .registers 6

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ".0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_18
    return-object v0
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    if-eq p0, p1, :cond_6

    if-nez p0, :cond_8

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5

    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public static getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F
    .registers 5

    :try_start_0
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v1

    return v1

    :catch_9
    move-exception v0

    return p2
.end method

.method public static getAttrAsFloatThrows(Lorg/w3c/dom/Element;Ljava/lang/String;)F
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public static getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I
    .registers 5

    :try_start_0
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v1

    return v1

    :catch_9
    move-exception v0

    return p2
.end method

.method public static getAttrAsIntThrows(Lorg/w3c/dom/Element;Ljava/lang/String;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getAttrAsLong(Lorg/w3c/dom/Element;Ljava/lang/String;J)J
    .registers 8

    :try_start_0
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-wide v2

    return-wide v2

    :catch_9
    move-exception v0

    return-wide p2
.end method

.method public static getAttrAsLongThrows(Lorg/w3c/dom/Element;Ljava/lang/String;)J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .registers 8

    const/4 v5, 0x0

    if-nez p0, :cond_4

    return-object v5

    :cond_4
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    const/4 v0, 0x0

    :goto_9
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v0, v3, :cond_2a

    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_27

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_27

    check-cast v1, Lorg/w3c/dom/Element;

    return-object v1

    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_2a
    return-object v5
.end method

.method public static getPorterDuffMode(I)Landroid/graphics/PorterDuff$Mode;
    .registers 7

    const/4 v3, 0x0

    const-class v4, Landroid/graphics/PorterDuff$Mode;

    invoke-static {v4}, Ljava/lang/Enum;->getSharedConstants(Ljava/lang/Class;)[Ljava/lang/Enum;

    move-result-object v2

    check-cast v2, [Landroid/graphics/PorterDuff$Mode;

    if-gez p0, :cond_1b

    const/4 p0, 0x0

    :cond_c
    :goto_c
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    array-length v4, v2

    :goto_f
    if-ge v3, v4, :cond_1a

    aget-object v0, v2, v3

    invoke-virtual {v0}, Landroid/graphics/PorterDuff$Mode;->ordinal()I

    move-result v5

    if-ne v5, p0, :cond_22

    move-object v1, v0

    :cond_1a
    return-object v1

    :cond_1b
    array-length v4, v2

    if-lt p0, v4, :cond_c

    array-length v4, v2

    add-int/lit8 p0, v4, -0x1

    goto :goto_c

    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_f
.end method

.method public static getPorterDuffMode(Ljava/lang/String;)Landroid/graphics/PorterDuff$Mode;
    .registers 7

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    return-object v2

    :cond_9
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-static {}, Landroid/graphics/PorterDuff$Mode;->values()[Landroid/graphics/PorterDuff$Mode;

    move-result-object v3

    const/4 v2, 0x0

    array-length v4, v3

    :goto_11
    if-ge v2, v4, :cond_20

    aget-object v0, v3, v2

    invoke-virtual {v0}, Landroid/graphics/PorterDuff$Mode;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_21

    move-object v1, v0

    :cond_20
    return-object v1

    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_11
.end method

.method public static getVariableNumber(Ljava/lang/String;Lmiui/maml/data/Variables;)D
    .registers 6

    new-instance v0, Lmiui/maml/data/IndexedVariable;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    invoke-virtual {v0}, Lmiui/maml/data/IndexedVariable;->getDouble()D

    move-result-wide v2

    return-wide v2
.end method

.method public static isProtectedIntent(Ljava/lang/String;)Z
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method

.method public static mixAlpha(II)I
    .registers 6

    const/16 v3, 0xff

    const/4 v0, 0x0

    if-lt p0, v3, :cond_10

    move v0, p1

    :goto_6
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1

    :cond_10
    if-lt p1, v3, :cond_14

    move v0, p0

    goto :goto_6

    :cond_14
    mul-int v1, p0, p1

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_6
.end method

.method public static numberToString(Ljava/lang/Number;)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ".0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_18
    return-object v0
.end method

.method public static parseDouble(Ljava/lang/String;)D
    .registers 3

    const/4 v1, 0x1

    const-string/jumbo v0, "+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_14

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_14
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static pointProjectionOnSegment(Lmiui/maml/util/Utils$Point;Lmiui/maml/util/Utils$Point;Lmiui/maml/util/Utils$Point;Z)Lmiui/maml/util/Utils$Point;
    .registers 16

    invoke-virtual {p1, p0}, Lmiui/maml/util/Utils$Point;->minus(Lmiui/maml/util/Utils$Point;)Lmiui/maml/util/Utils$Point;

    move-result-object v0

    invoke-virtual {p2, p0}, Lmiui/maml/util/Utils$Point;->minus(Lmiui/maml/util/Utils$Point;)Lmiui/maml/util/Utils$Point;

    move-result-object v1

    iget-wide v6, v0, Lmiui/maml/util/Utils$Point;->x:D

    iget-wide v8, v1, Lmiui/maml/util/Utils$Point;->x:D

    mul-double/2addr v6, v8

    iget-wide v8, v0, Lmiui/maml/util/Utils$Point;->y:D

    iget-wide v10, v1, Lmiui/maml/util/Utils$Point;->y:D

    mul-double/2addr v8, v10

    add-double v4, v6, v8

    const/4 v3, 0x0

    invoke-static {p0, p1, v3}, Lmiui/maml/util/Utils;->Dist(Lmiui/maml/util/Utils$Point;Lmiui/maml/util/Utils$Point;Z)D

    move-result-wide v6

    div-double/2addr v4, v6

    const-wide/16 v6, 0x0

    cmpg-double v3, v4, v6

    if-ltz v3, :cond_26

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v3, v4, v6

    if-lez v3, :cond_32

    :cond_26
    if-nez p3, :cond_2a

    const/4 p0, 0x0

    :cond_29
    :goto_29
    return-object p0

    :cond_2a
    const-wide/16 v6, 0x0

    cmpg-double v3, v4, v6

    if-ltz v3, :cond_29

    move-object p0, p1

    goto :goto_29

    :cond_32
    move-object v2, v0

    iget-wide v6, v0, Lmiui/maml/util/Utils$Point;->x:D

    mul-double/2addr v6, v4

    iput-wide v6, v0, Lmiui/maml/util/Utils$Point;->x:D

    iget-wide v6, v0, Lmiui/maml/util/Utils$Point;->y:D

    mul-double/2addr v6, v4

    iput-wide v6, v0, Lmiui/maml/util/Utils$Point;->y:D

    invoke-virtual {v0, p0}, Lmiui/maml/util/Utils$Point;->Offset(Lmiui/maml/util/Utils$Point;)V

    return-object v0
.end method

.method public static putVariableNumber(Ljava/lang/String;Lmiui/maml/data/Variables;D)V
    .registers 4

    invoke-virtual {p1, p0, p2, p3}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    return-void
.end method

.method public static putVariableNumber(Ljava/lang/String;Lmiui/maml/data/Variables;Ljava/lang/Double;)V
    .registers 5

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, p0, v0, v1}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    return-void
.end method

.method public static putVariableString(Ljava/lang/String;Lmiui/maml/data/Variables;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p1, p0, p2}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static stringToDouble(Ljava/lang/String;D)D
    .registers 8

    if-nez p0, :cond_3

    return-wide p1

    :cond_3
    :try_start_3
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_6} :catch_8

    move-result-wide v2

    return-wide v2

    :catch_8
    move-exception v0

    return-wide p1
.end method

.method public static traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/maml/util/Utils$XmlTraverseListener;)V
    .registers 8

    invoke-interface {p0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    :goto_5
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v1, v3, :cond_2a

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_27

    if-eqz p1, :cond_22

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_27

    :cond_22
    check-cast v2, Lorg/w3c/dom/Element;

    invoke-interface {p2, v2}, Lmiui/maml/util/Utils$XmlTraverseListener;->onChild(Lorg/w3c/dom/Element;)V

    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_2a
    return-void
.end method

.method public static traverseXmlElementChildrenTags(Lorg/w3c/dom/Element;[Ljava/lang/String;Lmiui/maml/util/Utils$XmlTraverseListener;)V
    .registers 9

    invoke-interface {p0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    :goto_5
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v1, v4, :cond_2a

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_27

    if-eqz p1, :cond_22

    invoke-static {p1, v2}, Lmiui/maml/util/Utils;->arrContains([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_27

    :cond_22
    check-cast v3, Lorg/w3c/dom/Element;

    invoke-interface {p2, v3}, Lmiui/maml/util/Utils$XmlTraverseListener;->onChild(Lorg/w3c/dom/Element;)V

    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_2a
    return-void
.end method


# virtual methods
.method public splitByteArray(Ljava/lang/String;)[B
    .registers 3

    const/16 v0, 0xa

    invoke-virtual {p0, p1, v0}, Lmiui/maml/util/Utils;->splitByteArray(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public splitByteArray(Ljava/lang/String;I)[B
    .registers 9

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v5, 0x0

    return-object v5

    :cond_8
    const-string/jumbo v5, ","

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v3, v4

    new-array v0, v3, [B

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v3, :cond_20

    :try_start_15
    aget-object v5, v4, v2

    invoke-static {v5, p2}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;I)B

    move-result v5

    aput-byte v5, v0, v2
    :try_end_1d
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_1d} :catch_21

    :goto_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_20
    return-object v0

    :catch_21
    move-exception v1

    goto :goto_1d
.end method

.method public splitDoubleArray(Ljava/lang/String;)[D
    .registers 10

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v5, 0x0

    return-object v5

    :cond_8
    const-string/jumbo v5, ","

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v3, v4

    new-array v0, v3, [D

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v3, :cond_20

    :try_start_15
    aget-object v5, v4, v2

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    aput-wide v6, v0, v2
    :try_end_1d
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_1d} :catch_21

    :goto_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_20
    return-object v0

    :catch_21
    move-exception v1

    goto :goto_1d
.end method

.method public splitIntArray(Ljava/lang/String;)[I
    .registers 3

    const/16 v0, 0xa

    invoke-virtual {p0, p1, v0}, Lmiui/maml/util/Utils;->splitIntArray(Ljava/lang/String;I)[I

    move-result-object v0

    return-object v0
.end method

.method public splitIntArray(Ljava/lang/String;I)[I
    .registers 9

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v5, 0x0

    return-object v5

    :cond_8
    const-string/jumbo v5, ","

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v3, v4

    new-array v0, v3, [I

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v3, :cond_20

    :try_start_15
    aget-object v5, v4, v2

    invoke-static {v5, p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    aput v5, v0, v2
    :try_end_1d
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_1d} :catch_21

    :goto_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_20
    return-object v0

    :catch_21
    move-exception v1

    goto :goto_1d
.end method

.method public splitStringArray(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
