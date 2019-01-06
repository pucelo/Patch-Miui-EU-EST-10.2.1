.class public Landroid/content/IntentCompat;
.super Ljava/lang/Object;
.source "IntentCompat.java"


# static fields
.field public static final ACTION_DISMISS_KEYBOARD_SHORTCUTS:Ljava/lang/String;

.field public static final ACTION_SHOW_KEYBOARD_SHORTCUTS:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0x1a

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_0

    const-string/jumbo v0, "com.android.intent.action.SHOW_KEYBOARD_SHORTCUTS"

    :goto_0
    sput-object v0, Landroid/content/IntentCompat;->ACTION_SHOW_KEYBOARD_SHORTCUTS:Ljava/lang/String;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_1

    const-string/jumbo v0, "com.android.intent.action.DISMISS_KEYBOARD_SHORTCUTS"

    :goto_1
    sput-object v0, Landroid/content/IntentCompat;->ACTION_DISMISS_KEYBOARD_SHORTCUTS:Ljava/lang/String;

    return-void

    :cond_0
    const-string/jumbo v0, "android.intent.action.SHOW_KEYBOARD_SHORTCUTS"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "android.intent.action.DISMISS_KEYBOARD_SHORTCUTS"

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
