.class public final Landroid/provider/ContactsContract$CommonDataKinds$Email;
.super Ljava/lang/Object;
.source "ContactsContract.java"

# interfaces
.implements Landroid/provider/ContactsContract$DataColumnsWithJoins;
.implements Landroid/provider/ContactsContract$CommonDataKinds$CommonColumns;
.implements Landroid/provider/ContactsContract$ContactCounts;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract$CommonDataKinds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Email"
.end annotation


# static fields
.field public static final ADDRESS:Ljava/lang/String; = "data1"

.field public static final CONTENT_FILTER_URI:Landroid/net/Uri;

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/email_v2"

.field public static final CONTENT_LOOKUP_URI:Landroid/net/Uri;

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/email_v2"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DISPLAY_NAME:Ljava/lang/String; = "data4"

.field public static final ENTERPRISE_CONTENT_FILTER_URI:Landroid/net/Uri;

.field public static final ENTERPRISE_CONTENT_LOOKUP_URI:Landroid/net/Uri;

.field public static final TYPE_HOME:I = 0x1

.field public static final TYPE_MOBILE:I = 0x4

.field public static final TYPE_OTHER:I = 0x3

.field public static final TYPE_WORK:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "emails"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "lookup"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "lookup_enterprise"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->ENTERPRISE_CONTENT_LOOKUP_URI:Landroid/net/Uri;

    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "filter"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_FILTER_URI:Landroid/net/Uri;

    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "filter_enterprise"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->ENTERPRISE_CONTENT_FILTER_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 5

    if-nez p1, :cond_b

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_b

    return-object p2

    :cond_b
    invoke-static {p1}, Landroid/provider/ContactsContract$CommonDataKinds$Email;->getTypeLabelResource(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method public static final getTypeLabelResource(I)I
    .registers 2

    packed-switch p0, :pswitch_data_18

    const v0, 0x10401d1

    return v0

    :pswitch_7
    const v0, 0x10401d2

    return v0

    :pswitch_b
    const v0, 0x10401d5

    return v0

    :pswitch_f
    const v0, 0x10401d4

    return v0

    :pswitch_13
    const v0, 0x10401d3

    return v0

    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_7
        :pswitch_b
        :pswitch_f
        :pswitch_13
    .end packed-switch
.end method
