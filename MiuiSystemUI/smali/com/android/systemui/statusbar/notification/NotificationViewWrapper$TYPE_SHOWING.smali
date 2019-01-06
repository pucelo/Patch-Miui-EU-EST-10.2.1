.class public final enum Lcom/android/systemui/statusbar/notification/NotificationViewWrapper$TYPE_SHOWING;
.super Ljava/lang/Enum;
.source "NotificationViewWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TYPE_SHOWING"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/systemui/statusbar/notification/NotificationViewWrapper$TYPE_SHOWING;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/statusbar/notification/NotificationViewWrapper$TYPE_SHOWING;

.field public static final enum TYPE_AMBIENT:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper$TYPE_SHOWING;

.field public static final enum TYPE_CONTRACTED:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper$TYPE_SHOWING;

.field public static final enum TYPE_EXPANDED:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper$TYPE_SHOWING;

.field public static final enum TYPE_HEADSUP:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper$TYPE_SHOWING;

.field public static final enum TYPE_UNKNOWN:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper$TYPE_SHOWING;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper$TYPE_SHOWING;

    const-string/jumbo v1, "TYPE_UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper$TYPE_SHOWING;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper$TYPE_SHOWING;->TYPE_UNKNOWN:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper$TYPE_SHOWING;

    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper$TYPE_SHOWING;

    const-string/jumbo v1, "TYPE_CONTRACTED"

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper$TYPE_SHOWING;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper$TYPE_SHOWING;->TYPE_CONTRACTED:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper$TYPE_SHOWING;

    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper$TYPE_SHOWING;

    const-string/jumbo v1, "TYPE_EXPANDED"

    invoke-direct {v0, v1, v4}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper$TYPE_SHOWING;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper$TYPE_SHOWING;->TYPE_EXPANDED:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper$TYPE_SHOWING;

    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper$TYPE_SHOWING;

    const-string/jumbo v1, "TYPE_HEADSUP"

    invoke-direct {v0, v1, v5}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper$TYPE_SHOWING;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper$TYPE_SHOWING;->TYPE_HEADSUP:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper$TYPE_SHOWING;

    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper$TYPE_SHOWING;

    const-string/jumbo v1, "TYPE_AMBIENT"

    invoke-direct {v0, v1, v6}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper$TYPE_SHOWING;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper$TYPE_SHOWING;->TYPE_AMBIENT:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper$TYPE_SHOWING;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/systemui/statusbar/notification/NotificationViewWrapper$TYPE_SHOWING;

    sget-object v1, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper$TYPE_SHOWING;->TYPE_UNKNOWN:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper$TYPE_SHOWING;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper$TYPE_SHOWING;->TYPE_CONTRACTED:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper$TYPE_SHOWING;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper$TYPE_SHOWING;->TYPE_EXPANDED:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper$TYPE_SHOWING;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper$TYPE_SHOWING;->TYPE_HEADSUP:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper$TYPE_SHOWING;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper$TYPE_SHOWING;->TYPE_AMBIENT:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper$TYPE_SHOWING;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper$TYPE_SHOWING;->$VALUES:[Lcom/android/systemui/statusbar/notification/NotificationViewWrapper$TYPE_SHOWING;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper$TYPE_SHOWING;
    .locals 1

    const-class v0, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper$TYPE_SHOWING;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper$TYPE_SHOWING;

    return-object v0
.end method

.method public static values()[Lcom/android/systemui/statusbar/notification/NotificationViewWrapper$TYPE_SHOWING;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper$TYPE_SHOWING;->$VALUES:[Lcom/android/systemui/statusbar/notification/NotificationViewWrapper$TYPE_SHOWING;

    return-object v0
.end method
