.class final enum Lcom/android/internal/app/ResolverActivity$ActionTitle;
.super Ljava/lang/Enum;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ActionTitle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/app/ResolverActivity$ActionTitle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/app/ResolverActivity$ActionTitle;

.field public static final enum CAPTURE_IMAGE:Lcom/android/internal/app/ResolverActivity$ActionTitle;

.field public static final enum DEFAULT:Lcom/android/internal/app/ResolverActivity$ActionTitle;

.field public static final enum EDIT:Lcom/android/internal/app/ResolverActivity$ActionTitle;

.field public static final enum HOME:Lcom/android/internal/app/ResolverActivity$ActionTitle;

.field public static final enum SEND:Lcom/android/internal/app/ResolverActivity$ActionTitle;

.field public static final enum SENDTO:Lcom/android/internal/app/ResolverActivity$ActionTitle;

.field public static final enum SEND_MULTIPLE:Lcom/android/internal/app/ResolverActivity$ActionTitle;

.field public static final enum VIEW:Lcom/android/internal/app/ResolverActivity$ActionTitle;


# instance fields
.field public final action:Ljava/lang/String;

.field public final labelRes:I

.field public final namedTitleRes:I

.field public final titleRes:I


# direct methods
.method static constructor <clinit>()V
    .registers 14

    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    const-string/jumbo v1, "VIEW"

    const-string/jumbo v3, "android.intent.action.VIEW"

    const v4, 0x10406b5

    const v5, 0x10406b7

    const v6, 0x10406b6

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/app/ResolverActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->VIEW:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    new-instance v3, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    const-string/jumbo v4, "EDIT"

    const-string/jumbo v6, "android.intent.action.EDIT"

    const v7, 0x10406a6

    const v8, 0x10406a8

    const v9, 0x10406a7

    move v5, v10

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/app/ResolverActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v3, Lcom/android/internal/app/ResolverActivity$ActionTitle;->EDIT:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    new-instance v3, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    const-string/jumbo v4, "SEND"

    const-string/jumbo v6, "android.intent.action.SEND"

    const v7, 0x10406af

    const v8, 0x10406b1

    const v9, 0x10406b0

    move v5, v11

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/app/ResolverActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v3, Lcom/android/internal/app/ResolverActivity$ActionTitle;->SEND:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    new-instance v3, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    const-string/jumbo v4, "SENDTO"

    const-string/jumbo v6, "android.intent.action.SENDTO"

    const v7, 0x10406b2

    const v8, 0x10406b4

    const v9, 0x10406b3

    move v5, v12

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/app/ResolverActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v3, Lcom/android/internal/app/ResolverActivity$ActionTitle;->SENDTO:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    new-instance v3, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    const-string/jumbo v4, "SEND_MULTIPLE"

    const-string/jumbo v6, "android.intent.action.SEND_MULTIPLE"

    const v7, 0x10406af

    const v8, 0x10406b1

    const v9, 0x10406b0

    move v5, v13

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/app/ResolverActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v3, Lcom/android/internal/app/ResolverActivity$ActionTitle;->SEND_MULTIPLE:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    new-instance v3, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    const-string/jumbo v4, "CAPTURE_IMAGE"

    const-string/jumbo v6, "android.media.action.IMAGE_CAPTURE"

    const/4 v5, 0x5

    const v7, 0x10406ac

    const v8, 0x10406ae

    const v9, 0x10406ad

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/app/ResolverActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v3, Lcom/android/internal/app/ResolverActivity$ActionTitle;->CAPTURE_IMAGE:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    new-instance v3, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    const-string/jumbo v4, "DEFAULT"

    const/4 v5, 0x6

    const/4 v6, 0x0

    const v7, 0x10406a3

    const v8, 0x10406a5

    const v9, 0x10406a4

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/app/ResolverActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v3, Lcom/android/internal/app/ResolverActivity$ActionTitle;->DEFAULT:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    new-instance v3, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    const-string/jumbo v4, "HOME"

    const-string/jumbo v6, "android.intent.action.MAIN"

    const/4 v5, 0x7

    const v7, 0x10406a9

    const v8, 0x10406ab

    const v9, 0x10406aa

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/app/ResolverActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v3, Lcom/android/internal/app/ResolverActivity$ActionTitle;->HOME:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/internal/app/ResolverActivity$ActionTitle;

    sget-object v1, Lcom/android/internal/app/ResolverActivity$ActionTitle;->VIEW:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/app/ResolverActivity$ActionTitle;->EDIT:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    aput-object v1, v0, v10

    sget-object v1, Lcom/android/internal/app/ResolverActivity$ActionTitle;->SEND:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    aput-object v1, v0, v11

    sget-object v1, Lcom/android/internal/app/ResolverActivity$ActionTitle;->SENDTO:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    aput-object v1, v0, v12

    sget-object v1, Lcom/android/internal/app/ResolverActivity$ActionTitle;->SEND_MULTIPLE:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    aput-object v1, v0, v13

    sget-object v1, Lcom/android/internal/app/ResolverActivity$ActionTitle;->CAPTURE_IMAGE:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/app/ResolverActivity$ActionTitle;->DEFAULT:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/app/ResolverActivity$ActionTitle;->HOME:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->$VALUES:[Lcom/android/internal/app/ResolverActivity$ActionTitle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;III)V
    .registers 7

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->action:Ljava/lang/String;

    iput p4, p0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->titleRes:I

    iput p5, p0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->namedTitleRes:I

    iput p6, p0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->labelRes:I

    return-void
.end method

.method public static forAction(Ljava/lang/String;)Lcom/android/internal/app/ResolverActivity$ActionTitle;
    .registers 6

    invoke-static {}, Lcom/android/internal/app/ResolverActivity$ActionTitle;->values()[Lcom/android/internal/app/ResolverActivity$ActionTitle;

    move-result-object v2

    const/4 v1, 0x0

    array-length v3, v2

    :goto_6
    if-ge v1, v3, :cond_1c

    aget-object v0, v2, v1

    sget-object v4, Lcom/android/internal/app/ResolverActivity$ActionTitle;->HOME:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    if-eq v0, v4, :cond_19

    if-eqz p0, :cond_19

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->action:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    return-object v0

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1c
    sget-object v1, Lcom/android/internal/app/ResolverActivity$ActionTitle;->DEFAULT:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/app/ResolverActivity$ActionTitle;
    .registers 2

    const-class v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/app/ResolverActivity$ActionTitle;
    .registers 1

    sget-object v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->$VALUES:[Lcom/android/internal/app/ResolverActivity$ActionTitle;

    return-object v0
.end method
