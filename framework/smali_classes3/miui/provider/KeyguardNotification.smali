.class public Lmiui/provider/KeyguardNotification;
.super Ljava/lang/Object;
.source "KeyguardNotification.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "keyguard.notification"

.field public static final BASE_URI_STRING:Ljava/lang/String; = "content://keyguard.notification"

.field public static final CONTENT:Ljava/lang/String; = "content"

.field public static final CONTENT_INDEX:I = 0x3

.field public static final ICON:Ljava/lang/String; = "icon"

.field public static final ICON_INDEX:I = 0x1

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final ID_INDEX:I = 0x0

.field public static final INFO:Ljava/lang/String; = "info"

.field public static final INFO_INDEX:I = 0x5

.field public static final KEY:Ljava/lang/String; = "key"

.field public static final KEY_INDEX:I = 0x7

.field public static final PKG:Ljava/lang/String; = "pkg"

.field public static final PKG_INDEX:I = 0x8

.field public static final PROJECTION:[Ljava/lang/String;

.field public static final SUBTEXT:Ljava/lang/String; = "subtext"

.field public static final SUBTEXT_INDEX:I = 0x6

.field public static final TABLE:Ljava/lang/String; = "notifications"

.field public static final TIME:Ljava/lang/String; = "time"

.field public static final TIME_INDEX:I = 0x4

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final TITLE_INDEX:I = 0x2

.field public static final URI:Landroid/net/Uri;

.field public static final USERID:Ljava/lang/String; = "user_id"

.field public static final USERID_INDEX:I = 0x9


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string/jumbo v0, "content://keyguard.notification/notifications"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/KeyguardNotification;->URI:Landroid/net/Uri;

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "icon"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "title"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "content"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "time"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "info"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "subtext"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "key"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "pkg"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "user_id"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sput-object v0, Lmiui/provider/KeyguardNotification;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
